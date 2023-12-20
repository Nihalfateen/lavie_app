import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String id = 'cart';
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: 707,
      width: 428,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/Auto Layout Vertical.png'),
          fit: BoxFit.cover,
        ),
      ),
    )));
  }
}
