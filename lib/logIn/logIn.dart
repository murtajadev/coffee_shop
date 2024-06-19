import 'package:flutter/material.dart';
import 'package:food/logIn/contentPage.dart';

class LogInDesign extends StatefulWidget {
  const LogInDesign({super.key});

  @override
  State<LogInDesign> createState() => _LogInDesignState();
}

class _LogInDesignState extends State<LogInDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/images/backgroundCoffee1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Stack(
        children: [
          LogInContents(),
        ],
      ),
    ));
  }
}
