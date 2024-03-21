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
            _buildQrView(context),
            Positioned(
                top: hJM(5),
                left: wJM(1),
                child: BaseButton(
                  backgroundColor: Colors.transparent,
                  borderStyle: Colors.transparent,
                  icon: const Icon(Icons.close, color: CommonTheme.backgroundColor),
                  onClick: () => Navigator.pop(context),
                )),
            Positioned(
              top: hJM(15),
              width: wJM(100),
              height: hJM(12),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: wJM(15)),
                decoration: BoxDecoration(
                  color: AppColors.green900.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(100),
                ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BaseButton(
                            height: wJM(18),
                            width: wJM(18),
                            backgroundColor: Colors.transparent,
                            borderStyle: Colors.transparent,
                            icon: const Icon(
                              Icons.flash_on,
                              color: CommonTheme.backgroundColor,
                            ),
                            onClick: () async {
                              await controller?.toggleFlash();
                            },
                          ),
                          BaseButton(
                            height: wJM(18),
                            width: wJM(18),
                            backgroundColor: Colors.transparent,
                            borderStyle: Colors.transparent,
                            onClick: () async {
                              await controller?.flipCamera();
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
