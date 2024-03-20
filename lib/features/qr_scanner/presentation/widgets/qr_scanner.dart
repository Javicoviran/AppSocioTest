import 'dart:developer';
import 'dart:io';

import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

// TODO: body with appbar ?
class _QRScannerState extends State<QRScanner> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Expanded(child: _buildQrView(context)),
            Positioned(
              bottom: 0,
              width: wJM(100),
              child: Container(
                color: Colors.transparent,
                height: hJM(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (result != null)
                      //TODO: redirigir a widget de producto

                      // BaseButton(
                      //   onClick: () => launchUrl(Uri.parse(result!.code!), mode: LaunchMode.externalApplication),
                      //   height: 0.05.sh,
                      //   width: 0.33.sw,
                      //   text: "Ir al producto",
                      //   backgroundColor: CommonTheme.primaryColor,
                      // )
                      Text('${result!.code}', style: CommonTheme.bodyLarge)
                    else
                      Text('Scanea el producto', style: CommonTheme.bodyLarge.copyWith(color: CommonTheme.backgroundColor)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BaseButton(
                          height: wJM(18),
                          width: wJM(18),
                          backgroundColor: AppColors.green900,
                          borderStyle: AppColors.green900,
                          icon: const Icon(
                            Icons.flash_on,
                            color: CommonTheme.backgroundColor,
                          ),
                          onClick: () async {
                            await controller?.toggleFlash();
                            setState(() {});
                          },
                        ),
                        BaseButton(
                          height: wJM(18),
                          width: wJM(18),
                          backgroundColor: AppColors.green900,
                          borderStyle: AppColors.green900,
                          onClick: () async {
                            await controller?.flipCamera();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.camera_enhance,
                            color: CommonTheme.backgroundColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 || MediaQuery.of(context).size.height < 400) ? 180.0 : 330.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(borderColor: Colors.red, borderRadius: 10, borderLength: 30, borderWidth: 10, cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
