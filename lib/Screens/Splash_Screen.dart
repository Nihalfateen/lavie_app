
import 'package:flutter/material.dart';
import 'Sign_up.dart';


class Splash_screen extends StatefulWidget {
  static String id = 'Welcome_screen';

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushNamed(context, Signup.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: const Image(image: AssetImage('images/lavie.png')),
        ),
      ),
    );
  }
}
