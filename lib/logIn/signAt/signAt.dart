import 'package:flutter/material.dart';
import 'package:food/logIn/signAt/contentsPage.dart';

class SignAtDesign extends StatefulWidget {
  const SignAtDesign({super.key});

  @override
  State<SignAtDesign> createState() => _SignAtDesignState();
}

class _SignAtDesignState extends State<SignAtDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/backgroundCoffee1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Stack(
          children: [SignAtContents()],
        ),
      ),
    );
  }
}
