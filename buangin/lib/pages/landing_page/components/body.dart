import "package:flutter/material.dart";

class Body extends StatelessWidget {
  const Body({super.key});

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
            top: 100,
            child: Image.asset(
              'assets/images/Logo_Buangin.png',
              width: size.width,
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
              ))
        ],
      ),
    );
  }
}
