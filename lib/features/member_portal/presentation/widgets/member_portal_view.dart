import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class MemberPortalView extends ConsumerStatefulWidget {
  final Uri url;

  const MemberPortalView({
    required this.url,
    super.key,
  });

  @override
  ConsumerState<MemberPortalView> createState() => MemberPortalViewState();
}

class MemberPortalViewState extends ConsumerState<MemberPortalView> {
  late final WebViewController webViewController;

  @override
  void initState() {
    super.initState();

    final params = (WebViewPlatform.instance is WebKitWebViewPlatform)
        ? WebKitWebViewControllerCreationParams(
            allowsInlineMediaPlayback: true,
            mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
          )
        : const PlatformWebViewControllerCreationParams();

    final controller = WebViewController.fromPlatformCreationParams(params);
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(widget.url);

    if (controller.platform is AndroidWebViewController) {
      (controller.platform as AndroidWebViewController).setMediaPlaybackRequiresUserGesture(false);
    }

    webViewController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: webViewController);
  }
}
