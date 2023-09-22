import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class BodyLP1 extends StatelessWidget {
  const BodyLP1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // buat kasih tau ukuran panjang dan lebar layar
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 270,
            child: Image.asset(
              'assets/images/Logo_Buangin.png',
              width: size.width * 0.3,
            ),
          ),
          const Positioned(
            bottom: 300,
            child: FittedBox(
              child: SizedBox(
                width: 190, // Set the desired width here
                child: Text(
                  "Aplikasi Marketplace dan Pembuangan Perabotan Bekas Anda",
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
        ],
      ),
    );
  }
}
