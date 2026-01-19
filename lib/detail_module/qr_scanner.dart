import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({super.key});

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scan Qr Code")),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return MobileScanner(
      onDetect: (barcodes) {
        final String? code = barcodes.barcodes.first.rawValue;
        if (code == null) {
          Navigator.pop(context, code);
        }
      },
    );
  }
}
