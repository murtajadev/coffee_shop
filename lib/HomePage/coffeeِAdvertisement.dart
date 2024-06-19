import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeAdvertisement extends StatefulWidget {
  const CoffeeAdvertisement({super.key, this.price});
  final price;
  @override
  State<CoffeeAdvertisement> createState() => _CoffeeAdvertisementState();
}

class _CoffeeAdvertisementState extends State<CoffeeAdvertisement> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width / 1.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 5.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.shutterstock.com/image-photo/cup-aromatic-coffee-on-dark-600nw-2116343291.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 90,
                  ),
                  Text(
                    "Caramel Macito",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 25,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "Italian coffee",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 65,
                  ),
                  Text(
                    "\$ ${widget.price}",
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height / 45,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
