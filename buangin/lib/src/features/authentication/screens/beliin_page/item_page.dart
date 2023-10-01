import 'package:buangin/constants.dart';
import 'package:buangin/src/features/authentication/screens/beliin_page/beliin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                height: size.height * 0.6,
                width: size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/homeImage1.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: kThirdColor.withOpacity(0.3),
                                    width: 1)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              icon: const Center(
                                  child: Icon(Icons.arrow_back_ios)),
                            )),
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: kThirdColor.withOpacity(0.3),
                                    width: 1)),
                            child: IconButton(
                              onPressed: () {},
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              icon: Transform.scale(
                                  scale: 1.5,
                                  child: SvgPicture.asset(
                                      'assets/icons/heart.svg')),
                            )),
                      ],
                    ))),
            Container(
              margin: const EdgeInsets.all(30),
              alignment: Alignment.centerLeft,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kursi Kerja',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          'Terbuat dari kulit',
                        ),
                      ),
                      Text(
                        'Rp 250.000,00',
                        style: TextStyle(
                            fontSize: 18,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Deskripsi Produk',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(
                    height: 200,
                  )
                ],
              ),
            )
          ]),
        ),
        bottomSheet: Container(
          height: size.height * 0.14,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: kThirdColor.withOpacity(0.3),
                    offset: const Offset(0, -1),
                    blurRadius: 10,
                    spreadRadius: 1)
              ],
              border: Border.all(
                color: kThirdColor.withOpacity(0.3),
              )),
          child: Container(
            margin: const EdgeInsets.all(25),
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BeliinPage();
                    },
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                side: const BorderSide(
                    color: kThirdColor, width: 2), // Specify the border color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Hubungi Penjual',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color:
                      kThirdColor, // Set the text color to match the border color
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ));
  }
}
