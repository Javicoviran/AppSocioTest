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
                width: wJM(100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BaseButton(
                      backgroundColor: Colors.transparent,
                      borderStyle: Colors.transparent,
                      icon: const Icon(Icons.close, color: CommonTheme.backgroundColor),
                      onClick: () => Navigator.pop(context),
                    ),
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
                  ],
                )),
            Positioned(
              top: hJM(15),
              width: wJM(100),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BaseButton(
                      height: wJM(18),
                      width: wJM(18),
                      backgroundColor: AppColors.green900.withOpacity(0.3),
                      borderStyle: AppColors.green900.withOpacity(0.3),
                      onClick: () async {
                        await controller?.flipCamera();
                      },
                      icon: const Icon(
                        Icons.change_circle,
                        color: CommonTheme.backgroundColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: hJM(20),
              width: wJM(100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (result != null)
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: wJM(10)),
                      alignment: Alignment.center,
                      height: hJM(10),
                      decoration: BoxDecoration(
                        color: AppColors.green900.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        '${result!.code}',
                        style: CommonTheme.bodyLarge.copyWith(color: CommonTheme.backgroundColor),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 || MediaQuery.of(context).size.height < 400) ? 200.0 : 330.0;
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
