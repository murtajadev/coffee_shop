import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food/HomePage/homePage.dart';
import 'package:food/logIn/signAt/signAt.dart';
import 'package:food/mudol/modul.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInContents extends StatefulWidget {
  const LogInContents({super.key});

  @override
  State<LogInContents> createState() => _LogInContentsState();
}

class _LogInContentsState extends State<LogInContents> {
  GlobalKey<FormState> formstate = GlobalKey();
  TextEditingController userName = TextEditingController();
  TextEditingController passwordUser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: formstate,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Log In",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30,
                          color: const Color(0xff563d2a),
                          fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFormField(
                controller: userName,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter your email";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  //contentPadding: EdgeInsets.all(18),
                  filled: true,
                  fillColor: Color.fromARGB(30, 255, 255, 255),
                  hintMaxLines: 10,
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  //isCollapsed: true,
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFormField(
                controller: passwordUser,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter your Password";
                  }

                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(30, 255, 255, 255),
                  iconColor: Colors.white,
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password_outlined),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Are you forget your Password ?",
                      style: TextStyle(color: Color.fromARGB(189, 8, 2, 75)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
              ),
              GestureDetector(
                onTap: () {
                  if (formstate.currentState!.validate()) {
                    for (int i = 0; i < emailAccounts.length; i++) {
                      if (userName.text == emailAccounts[i] &&
                          passwordUser.text == informationUsers[i][1]) {
                        setState(
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(userName: informationUsers[i][0]),
                              ),
                            );
                          },
                        );
                      }
                    }
                  } else {}
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 1.5,
                    color: Colors.white.withOpacity(0.05),
                    child: Stack(
                      children: [
                        //smooth backgroung
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Container(),
                        ),
                        // the grident of container (الشفافية )
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(0.13),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.05)
                              ],
                            ),
                          ),
                        ),
                        //the child inside the container
                        Center(
                          child: Text(
                            "Log In",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: Text(
                  "Create Account ?",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 6, 3, 112),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const SignAtDesign(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
