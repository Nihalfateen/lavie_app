import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/Text_formfield.dart';
import 'Home.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  static String id = "Signup";

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Color co = const Color(0xFF1abc00);
  Color text = const Color(0xFF6F6F6F);
  final TextEditingController email = new TextEditingController();
  final TextEditingController firstname = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  final TextEditingController lastname = new TextEditingController();
  final TextEditingController confirmpassword = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPreferences.setMockInitialValues({});
    Signup();
  }

  int index = -1;

  Color enableColor = Color(0xFF1abc00); //your color
  Color disableColor = Color(0xFF6F6F6F); //your color
  void signUp() async {
    try {
      var response = await Dio().post(
          'https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signup',
          data: {
            "firstName": "string",
            "lastName": "string",
            "email": "string",
            "password": "string"
            // "firstName": "${firstname.text}",
            // "lastName": "${lastname.text}",
            // "email": "${email.text}",
            // "password": "${password.text}"
          });
      print(response);
      // print(response.data['data']['accessToken']);
      // PreferenceUtils.setString(
      //     SharedKeys.apiToken, response.data['data']['accessToken']);
    } on DioError catch (e) {
      print(e.response);
      print(e.response!.data['message'][0]);
    }
  }

  bool showspinner = false;
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
                    style: ButtonStyle(overlayColor: getColor(text, co)),
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
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(
                          color: index == 1 ? enableColor : disableColor)),
                  onPressed: () {
                    setState(() {
                      index = 1;
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
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "First Name",
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
              validator: RequiredValidator(errorText: "firstname is required"),
              onSaved: (username) => username = username!,
              controller: firstname,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Last Name",
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
              controller: lastname,
            ),
            const SizedBox(height: 10),
            Text(
              "E-mail",
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
            const SizedBox(height: 10),
            Text(
              "Password",
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
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: Fielddecoration,
              controller: password,
            ),
            const SizedBox(height: 10),
            Text(
              "Confirm Password",
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
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: Fielddecoration,
              controller: confirmpassword,
            ),
            const SizedBox(
              height: 19,
            ),
            Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 5.0,
              color: const Color(0xFF1abc00),
              // borderRadius: BorderRadius.(30.0),
              child: MaterialButton(
                onPressed: () async {
                  await Signup();
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
