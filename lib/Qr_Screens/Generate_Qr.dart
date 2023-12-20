import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQr extends StatefulWidget {
  const GenerateQr({Key? key}) : super(key: key);
  static String id = 'Generateqr';
  @override
  State<GenerateQr> createState() => _GenerateQrState();
}

class _GenerateQrState extends State<GenerateQr> {
  String qrData =
      "https://github.com/neon97"; // already generated qr code when the page opens

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Generator'),
        actions: const <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              QrImage(
                //plce where the QR Image will be shown
                data: qrData,
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "New QR Link Generator",
                style: TextStyle(fontSize: 20.0),
              ),
              TextField(
                controller: qrdataFeed,
                decoration: const InputDecoration(
                  hintText: "Input your link or data",
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.all(15.0),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side:
                              const BorderSide(color: Colors.blue, width: 3.0),
                          borderRadius: BorderRadius.circular(20.0)))),
                  onPressed: () async {
                    if (qrdataFeed.text.isEmpty) {
                      //a little validation for the textfield
                      setState(() {
                        qrData = "";
                      });
                    } else {
                      setState(() {
                        qrData = qrdataFeed.text;
                      });
                    }
                  },
                  child: const Text(
                    "Generate QR",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  final qrdataFeed = TextEditingController();
}
