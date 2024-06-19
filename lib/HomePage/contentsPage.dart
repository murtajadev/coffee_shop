import 'package:flutter/material.dart';
import 'package:food/HomePage/appBar.dart';
import 'package:food/HomePage/cardCoffee.dart';
import 'package:food/HomePage/catalogCoffee.dart';
import 'package:food/HomePage/coffee%D9%90Advertisement.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentsPage extends StatefulWidget {
  const ContentsPage({super.key, required this.nameUser});
  final String nameUser;
  @override
  State<ContentsPage> createState() => _ContentsPageState();
}

class _ContentsPageState extends State<ContentsPage> {
  int numberItem = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const AppBarInside(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 50,
            ),
            Text(
              "Hi ${widget.nameUser.toUpperCase()}",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 95, 90, 78),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 120,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 50,
            ),
            Text(
              "Fresh Coffee",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF31302e),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 50,
            ),
            Text(
              "That makes your Day",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  textBaseline: TextBaseline.ideographic,
                  color: Color(0xFF31302e),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 60,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CatalogCoffee(
              iconImageName: "asset/images/boxCoffee.png",
            ),
            CatalogCoffee(
              iconImageName: "asset/images/Cake.jpg",
            ),
            CatalogCoffee(
              iconImageName: "asset/images/cupCoffee.jpg",
            ),
            CatalogCoffee(
              iconImageName: "asset/images/kettleCoffee.png",
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CoffeeCard(
                Price: 4.99,
                nameImage:
                    "https://us.123rf.com/450wm/bnenin/bnenin1803/bnenin180300269/97473526-pouring-creme-in-cup-of-coffee-close-up.jpg?ver=6",
              ),
              CoffeeCard(
                Price: 5.99,
                nameImage:
                    "https://t4.ftcdn.net/jpg/02/53/01/79/360_F_253017996_HzQUUJMZbRCsQk9pVY49GZlPFuC0yQS5.jpg",
              ),
              CoffeeCard(
                Price: 14.3,
                nameImage:
                    "https://images.unsplash.com/photo-1584012574355-008c9476e6ac?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGN1cHMlMjBvZiUyMGNvZmZlZXxlbnwwfHwwfHx8MA%3D%3D",
              ),
              CoffeeCard(
                Price: 8.99,
                nameImage:
                    "https://majestycoffee.com/cdn/shop/articles/coffee_cup2_1024x.jpg?v=1683531671",
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Popular",
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: MediaQuery.of(context).size.height / 35),
              ),
            ),
            Text(
              " Now",
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 35),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 70,
        ),
        const CoffeeAdvertisement(
          price: 19.3,
        )
      ],
    );
  }
}
