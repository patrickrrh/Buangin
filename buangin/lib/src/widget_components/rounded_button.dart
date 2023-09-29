import 'package:buangin/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    required Key key,
    required this.text,
    required this.press,
    this.color = kSecondaryColor,
    this.textColor = kPrimaryColor,
  }) : super(key: key);

  @override
Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
    width: size.width * 0.8,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.black, // Set the shadow color
        elevation: 2, // Adjust the elevation to control the shadow intensity
        backgroundColor: kSecondaryColor,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 110),
      ),
      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(color: kPrimaryColor, fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
      ),
    ),
  );
}
}
