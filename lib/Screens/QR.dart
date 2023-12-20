import 'package:flutter/material.dart';
import '../Qr_Screens/Generate_Qr.dart';
import '../Qr_Screens/Scan_Qr.dart';

class Qr extends StatefulWidget {
  const Qr({Key? key}) : super(key: key);
  static String id = 'QR';
  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        SizedBox(
          height: 1500,
          width: 1000,
          child: Image.asset(
            'images/Meet the Maker_ Nathalie Gibbins _ Rose & Grey 1 (1).png',
            fit: BoxFit.cover,
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, GenerateQr.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0XFFF8F8F8),
                ),
                child: const Text(
                  'Generate QR code',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ScanQr.id);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0XFFF8F8F8),
              ),
              child: const Text(
                'Scan Qr Code',
                style: TextStyle(color: Colors.black),
              )),
        ]),
      ]),
    );
  }
}
