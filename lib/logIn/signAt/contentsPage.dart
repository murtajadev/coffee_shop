import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food/HomePage/homePage.dart';
import 'package:food/logIn/logIn.dart';
import 'package:food/mudol/modul.dart';
import 'package:google_fonts/google_fonts.dart';

class SignAtContents extends StatefulWidget {
  const SignAtContents({super.key});

  @override
  State<SignAtContents> createState() => _SignAtContentsState();
}

class _SignAtContentsState extends State<SignAtContents> {
  GlobalKey<FormState> formstate2 = GlobalKey();
  TextEditingController NewuserName = TextEditingController();
  TextEditingController NewemailUser = TextEditingController();
  TextEditingController NewpasswordUser = TextEditingController();

  List<String> infoNewUser = [];
  String? emailNewUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: formstate2,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Create Account",
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
              height: MediaQuery.of(context).size.height / 20,
            ),
            TextFormField(
              controller: NewuserName,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter your Name";
                }
                return null;
              },
              onSaved: (newValue) {
                infoNewUser[0] = newValue.toString();
              },
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                //contentPadding: EdgeInsets.all(18),
                filled: true,
                fillColor: Color.fromARGB(30, 255, 255, 255),
                hintMaxLines: 10,
                labelText: "Name",

                border: OutlineInputBorder(),
                //isCollapsed: true,
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            TextFormField(
              controller: NewemailUser,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter your Email";
                }

                return null;
              },
              onSaved: (newValue) {
                emailNewUser = newValue;
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(30, 255, 255, 255),
                iconColor: Colors.white,
                hintText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password_outlined),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            TextFormField(
              controller: NewpasswordUser,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter your Password";
                }

                return null;
              },
              onSaved: (newValue) {
                infoNewUser[1] = newValue.toString();
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            GestureDetector(
              onTap: () {
                if (formstate2.currentState!.validate()) {
                  setState(
                    () {
                      emailAccounts.add(emailNewUser);
                      informationUsers.add(infoNewUser);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            userName: NewuserName.text,
                          ),
                        ),
                      );
                    },
                  );
                }
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
                          "Create Account",
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
              height: MediaQuery.of(context).size.height / 8,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(_createRoute());
                });
              },
              child: Text(
                "Log in",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(255, 6, 3, 112),
                      decorationThickness: 1,
                      fontSize: 20,
                      color: Color.fromARGB(255, 6, 3, 112),
                      fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const LogInDesign(),
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
