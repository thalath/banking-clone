import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khqr_sdk/khqr_sdk.dart';

class KhqrCardScreen extends StatefulWidget {
  const KhqrCardScreen({super.key});

  @override
  State<KhqrCardScreen> createState() => _KhqrCardScreenState();
}

class _KhqrCardScreenState extends State<KhqrCardScreen> {
  String? khqrContent;
  String? errorMessage;

  final String _receiverName = 'Tun Thalath';
  final KhqrCurrency _receiverCurrency = KhqrCurrency.khr;
  final double _amount = 0.00;

  @override
  void initState() {
    super.initState();

    generateIndividual();
  }

  Future<void> generateIndividual() async {
    try {
      setState(() {
        khqrContent =
            '00020101021129450016abaakhppxxx@abaa01090076172380208ABA Bank40600006abaP2P01125DE51CAC16D7020900761723803090076171930404Dual5204000053031165802KH5911THALATH TUN6010Phnom Penh6304460F';
      });
    } on PlatformException catch (e) {
      log('Error: ${e.message}');
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('KHQR Card')),
      body: errorMessage != null
          ? Center(
              child: Text(errorMessage!, style: TextStyle(color: Colors.red)),
            )
          : khqrContent == null
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                KhqrCardWidget(
                  width: 300.0,
                  receiverName: _receiverName,
                  amount: _amount,
                  keepIntegerDecimal: false,
                  currency: _receiverCurrency,
                  qr: khqrContent!,
                ),
                const SizedBox(height: 16.0),

                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Text(khqrContent!),
                // ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Enter Amount",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(Icons.add),
                ),
                const SizedBox(height: 16.0),
                Text("reeive to: 123456789|usd"),
                const SizedBox(height: 16.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      foregroundColor: Colors.pink,
                      radius: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.download),
                      ),
                    ),
                    CircleAvatar(
                      foregroundColor: Colors.pink,
                      radius: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.share),
                      ),
                    ),
                    CircleAvatar(
                      foregroundColor: Colors.pink,

                      radius: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shape_line),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
