import 'package:flutter/material.dart';
import 'package:food/HomePage/contentsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.userName});
  final userName;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var valueHight = MediaQuery.of(context).size.height.toDouble();
    var valueWidth = MediaQuery.of(context).size.width.toDouble();

    return Scaffold(
      backgroundColor: const Color(0xFF736149),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: valueHight / 1.2,
            width: valueWidth / 1.12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [Color(0xFFcfd2d4), Color(0xFFb2a9a0)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child:  Padding(
                padding:
                    const EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 15),
                child: ContentsPage(nameUser: widget.userName,)),
          ),
        ),
      ),
    );
  }
}
