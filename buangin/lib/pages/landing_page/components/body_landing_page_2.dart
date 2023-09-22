import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class BodyLP2 extends StatelessWidget {
  const BodyLP2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            top: size.height * 0.2,
            child: Image.asset(
              'assets/images/LP2.png',
              width: size.width * 0.8,
            ),
          ),
          const Positioned(
            bottom: 300,
            child: FittedBox(
              child: SizedBox(
                width: 284, // Set the desired width here
                child: Text(
                  "Dirancang untuk membantu anda membuangkan sampah perabotan anda atau menjualnya kepada pembeli",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/icons/arrow_right.svg",
                ),
                const SizedBox(width: 5),
                const Text("Geser")
              ],
            ),
          )
        ]));
  }
}
