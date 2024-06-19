import 'package:flutter/material.dart';

class CatalogCoffee extends StatefulWidget {
  const CatalogCoffee({super.key, this.iconImageName});
  final iconImageName;

  @override
  State<CatalogCoffee> createState() => _CatalogCoffeeState();
}

class _CatalogCoffeeState extends State<CatalogCoffee> {
  bool cond = true;

  @override
  Widget build(BuildContext context) {
    Color colorContainer =
        cond ? const Color.fromARGB(255, 244, 226, 200) : const Color(0xFF4e5158);
    Color colorIcon = cond ? Colors.black : Colors.white;
    return GestureDetector(
      onTap: () {
        setState(() {
          cond = !cond;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
        height: MediaQuery.of(context).size.height / 13,
        width: MediaQuery.of(context).size.width / 6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: colorContainer),
        child: Center(
          child: Image(
            image: AssetImage(widget.iconImageName),
            color: colorIcon,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
