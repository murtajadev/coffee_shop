import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/HomePage/cardCoffee.dart';

class AppBarInside extends StatefulWidget {
  const AppBarInside({super.key});

  @override
  State<AppBarInside> createState() => _AppBarInsideState();
}

class _AppBarInsideState extends State<AppBarInside> {
  @override
  Widget build(BuildContext context) {
    print(count);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_rounded,
            size: MediaQuery.of(context).size.height / 25,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: const Color.fromARGB(181, 0, 0, 0),
            size: MediaQuery.of(context).size.height / 30,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
          //width: MediaQuery.of(context).size.width / 15,
          child: Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "asset/images/handbasket.svg",
                  height: MediaQuery.of(context).size.height / 30,
                  // ignore: deprecated_member_use
                  color: const Color.fromARGB(181, 0, 0, 0),
                ),
              ),
              Positioned(
                //  top: 0.2,
                right: 6,
                child: Container(
                  height: MediaQuery.of(context).size.height / 25,
                  width: MediaQuery.of(context).size.width / 25,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Center(
                    child: Text(
                      "$count",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height / 40),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
