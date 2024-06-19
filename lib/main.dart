import 'package:flutter/material.dart';
import 'package:food/logIn/logIn.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LogInDesign(),
      ),
    );
  }
}
