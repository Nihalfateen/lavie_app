import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'Scan_page.dart';

class ScanQr extends StatefulWidget {
  static String id = 'scanqr';

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  String qrCodeResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanner"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: const TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.all(15.0),
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.blue, width: 3.0),
                      borderRadius: BorderRadius.circular(20.0)))),
              onPressed: () async {
                String codeSanner = await FlutterBarcodeScanner.scanBarcode(
                    "#ff6666",
                    "Cancel",
                    false,
                    ScanMode.DEFAULT); //barcode scnner
                setState(() {
                  qrCodeResult = codeSanner;
                });
              },
              child: const Text(
                "Open Scanner",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.all(15.0),
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.blue, width: 3.0),
                      borderRadius: BorderRadius.circular(20.0)))),
              onPressed: () async {
                Navigator.pushNamed(context, ScanPage.id);
              },
              child: const Text(
                "Open Scan Page",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

//its quite simple as that you can use try and catch staatements too for platform exception
}
