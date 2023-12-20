import 'package:flutter/material.dart';
import 'package:untitled1/Discussion%20forums/Discussion_forum1.dart';
import 'package:untitled1/Screens/cart_screen.dart';
import 'Qr_Screens/Generate_Qr.dart';
import 'Qr_Screens/Scan_Qr.dart';
import 'Qr_Screens/Scan_page.dart';
import 'Screens/Blogs_screen.dart';
import 'Screens/Home.dart';
import 'Screens/Notification.dart';
import 'Screens/Profile.dart';
import 'Screens/QR.dart';
import 'Screens/Sign_up.dart';
import 'Screens/Splash_screen.dart';
import 'Screens/login.dart';
import 'category/All.dart';
import 'category/Plants.dart';
import 'category/Seeds.dart';
import 'category/Tools.dart';

void main() {
  runApp(const Lavie());
}

class Lavie extends StatelessWidget {
  const Lavie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: Splash_screen.id, routes: {
      Splash_screen.id: (context) => Splash_screen(),
      Signup.id: (context) => Signup(),
      Login.id: (context) => const Login(),
      HomePage.id: (context) => HomePage(),
      AllCategory.id: (context) => const AllCategory(),
      PlantsCategory.id: (context) => const PlantsCategory(),
      SeedsCategory.id: (context) => const SeedsCategory(),
      ToolsCategory.id: (context) => const ToolsCategory(),
      Qr.id: (context) => const Qr(),
      Profile.id: (context) => const Profile(),
      NOTIFICATION.id: (context) => NOTIFICATION(),
      ScanQr.id: (context) => ScanQr(),
      GenerateQr.id: (context) => const GenerateQr(),
      ScanPage.id: (context) => const ScanPage(),
      BlogsScreen.id: (context) => BlogsScreen(),
      CartScreen.id: (context) => CartScreen(),
      DiscussionForum.id: (context) => DiscussionForum(),
    });
  }
}
