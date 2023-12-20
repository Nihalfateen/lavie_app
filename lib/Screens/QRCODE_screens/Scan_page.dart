import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../Blogs_screen.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);
  static String id = 'scan';

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: 1500,
          width: 1000,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: Row(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 60,
                      height: 60,
                      alignment: Alignment.topRight,
                      clipBehavior: Clip.hardEdge,
                      padding: const EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Image.asset(
                        'images/sun (3) 2.png',
                        fit: BoxFit.fitWidth,
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(children: <Widget>[
                      Text(
                        "78%",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Sun Light",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ])
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 60,
                      height: 60,
                      alignment: Alignment.topRight,
                      clipBehavior: Clip.hardEdge,
                      padding: const EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Image.asset(
                        'images/thermometer (1) 2.png',
                        fit: BoxFit.fitWidth,
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(children: <Widget>[
                      Text(
                        "29 c",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Temperature",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ])
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 60,
                      height: 60,
                      alignment: Alignment.topRight,
                      clipBehavior: Clip.hardEdge,
                      padding: const EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Image.asset(
                        'images/image 81 (Traced).png',
                        fit: BoxFit.fitWidth,
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(children: <Widget>[
                      Text(
                        "10%",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Water Capacity",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ])
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    height: 600,
                    width: 428,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'images/SNAKE PLANT (SANSEVIERIA).png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'images/words1.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'images/Common Snake Plant Diseases.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'images/words2.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, BlogsScreen.id);
                        },
                        child: Container(
                          height: 50,
                          width: 367,
                          decoration: BoxDecoration(
                              color: const Color(0XFF1ABC00),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Go To Blog",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ])),
    ));
  }
}
