// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  static String id = 'Profile';
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            Icon(
              Icons.more_horiz,
              color: Colors.white,
            )
          ],
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 148,
                width: 148,
                alignment: Alignment.center,
                child: Image.asset(
                  'images/Ellipse 105 (1).png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Mayar Mohamed',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.8,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Stack(children: <Widget>[
                  Container(
                    height: 597,
                    width: 428,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Positioned(
                              left: 20,
                              top: 30,
                              child: Container(
                                width: 378,
                                height: 80,
                                decoration:
                                    const BoxDecoration(color: Color(0XFFF3FEF1)),
                                child: Row(children: <Widget>[
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('images/Group 1264.jpg'),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "You have 3 points",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.88,
                                      color: Colors.black,
                                    ),
                                  ),
                                ]),
                              )),
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Positioned(
                              left: 20,
                              top: 30,
                              child: Text(
                                "Edit Profile",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19.88,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Positioned(
                              left: 20,
                              top: 30,
                              child: Container(
                                width: 378,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.blueGrey)),
                                child: Row(children: <Widget>[
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('images/icon.jpg'),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Change Name",
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.88,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Color(0XFF1D592C),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ]),
                              )),
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Positioned(
                              left: 20,
                              top: 30,
                              child: Container(
                                width: 378,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.blueGrey)),
                                child: Row(children: <Widget>[
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('images/icon.jpg'),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Change Email",
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.88,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Color(0XFF1D592C),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ]),
                              )),
                        ),
                      ]),
                ]),
              ),
            ]));
  }
}
