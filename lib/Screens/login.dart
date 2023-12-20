// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/Text_formfield.dart';
import 'Home.dart';
import 'Sign_up.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  static String id = "Login";

  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color co = const Color(0xFF1abc00);
  Color text = const Color(0xFF6F6F6F);
  final TextEditingController email = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  Future<String> loginApis() async {
    // isloading:true;
    var apiURL =
        'https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signin';

    var formData = FormData.fromMap({
      'email': email,
      'password': password,
    });
    //final prefs = await SharedPreferences.getInstance();

    Dio dio = Dio();
    Response responce;
    try {
      responce = await dio.post(
        apiURL,
        data: formData,
      );

      print("response data " + responce.toString());

      if (responce.data['error'] == false) {
        Navigator.pop(context);
        Fluttertoast.showToast(
            msg: "Login Successfull", backgroundColor: Colors.cyan);
      } else {
        Fluttertoast.showToast(
            msg: "Login Failed", backgroundColor: Colors.cyan);
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: "User Already exists", backgroundColor: Colors.cyan);
      return 'some thing wrong';
    }
    return '';
  }

  clickFunction() {
    Image.asset("images/Line 5.png");
  }

  MaterialStateProperty<Color> getColor(Color color, Color pressedcolor) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return pressedcolor;
      } else {
        return color;
      }
    }

    ;
    return MaterialStateProperty.resolveWith(getColor);
  }

  final bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              alignment: Alignment.topRight,
              child: Image.asset(
                'images/image 68 (Traced) (4).png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 100,
              alignment: Alignment.center,
              child: Image.asset(
                'images/lavie.png',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                    style: ButtonStyle(
                        overlayColor: getColor(text, co),
                        foregroundColor: getColor(text, co)),
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, Signup.id);
                      });
                    },
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    )),
                TextButton(
                  onPressed: () {},
                  child: TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                      color: Color(0xFF1abc00),
                    )),
                    onPressed: () {
                      setState(() {
                        clickFunction();
                        Navigator.pushNamed(context, Login.id);
                      });
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Email",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: Fielddecoration,
              controller: email,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Password",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: Fielddecoration,
              controller: password,
            ),
            const SizedBox(
              height: 19,
            ),
            Material(
              elevation: 5.0,
              color: const Color(0xFF1abc00),
              borderRadius: BorderRadius.circular(10.0),
              child: MaterialButton(
                onPressed: () {
                  Login();
                  Navigator.pushNamed(context, HomePage.id);
                },
                minWidth: 400.0,
                height: 50.0,
                child: Text(
                  'Login',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Image.asset(
              'images/Group 1000003313.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                    onPressed: () {}, child: Image.asset('images/Google.jpg')),
                MaterialButton(
                    onPressed: () {},
                    child: Image.asset('images/Facebook.jpg')),
              ],
            ),
            Container(
              height: 150,
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'images/image 68 (Traced) (5).png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
