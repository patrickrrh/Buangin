import 'package:buangin/src/features/authentication/screens/beliin_page/item_page.dart';
import 'package:flutter/material.dart';
import 'package:buangin/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BeliinPage extends StatefulWidget {
  const BeliinPage({super.key});

  @override
  State<BeliinPage> createState() => _BeliinPageState();
}

class _BeliinPageState extends State<BeliinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Buangin'),
        // ),
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(backgroundColor: kThirdColor),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: const Column(
                            children: [
                              Text(
                                'Nama',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kThirdColor,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                      color: kSecondaryColor),
                                  Text(
                                    'Lokasi',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 9,
                                      fontWeight: FontWeight.w500,
                                      color: kThirdColor,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/notification.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 7),
                        margin: const EdgeInsets.only(top: 20, bottom: 19),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: borderColor),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.search),
                            Text(
                              'Cari perabot',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: kThirdColor,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kSecondaryColor,
                      ),
                      child: SvgPicture.asset('assets/icons/bookmark.svg'),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: borderColor),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3)),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/Bangku.png",
                        height: 150,
                        width: 170,
                        fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Kursi Kerja",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Opacity(
                            opacity: 0.5,
                            child: Text("Terbuat dari kulit",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 8)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Rp 250.000,00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 50),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(width: 55),
                                Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: kThirdColor.withOpacity(0.3),
                                            width: 1)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Transform.scale(
                                          scale: 1.5,
                                          child: SvgPicture.asset(
                                            'assets/icons/heart.svg',
                                          ),
                                        ))),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Transform.scale(
                                          scale: 1.5,
                                          child: SvgPicture.asset(
                                            'assets/icons/plus.svg',
                                          ),
                                        ))),
                              ])
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 70,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kPrimaryColor),
                                side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color: kThirdColor.withOpacity(0.3),
                                      width:
                                          1), // set the desired border color and width
                                ),
                              ),
                              child: const Text(
                                "Meja",
                                style:
                                    TextStyle(color: kThirdColor, fontSize: 10),
                              ))),
                      SizedBox(
                          width: 70,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kPrimaryColor),
                                side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color: kThirdColor.withOpacity(0.3),
                                      width:
                                          1), // set the desired border color and width
                                ),
                              ),
                              child: const Text(
                                "Kursi",
                                style:
                                    TextStyle(color: kThirdColor, fontSize: 10),
                              ))),
                      SizedBox(
                          width: 70,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kPrimaryColor),
                                side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color: kThirdColor.withOpacity(0.3),
                                      width:
                                          1), // set the desired border color and width
                                ),
                              ),
                              child: const Text(
                                "Lemari",
                                style:
                                    TextStyle(color: kThirdColor, fontSize: 10),
                              ))),
                      SizedBox(
                          width: 70,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kSecondaryColor),
                              ),
                              child: const Text(
                                "Semua",
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 10),
                              ))),
                    ]),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Perabotan',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: kThirdColor,
                            decoration: TextDecoration.none),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return const BeliinPage();
                            }));
                          },
                          child: const Text(
                            'Lihat semua',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: kThirdColor,
                                decoration: TextDecoration.none),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 155,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const ItemPage();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              backgroundColor: kThirdColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/homeImage1.jpg',
                                width: 155,
                                height: 130,
                                fit: BoxFit.fill,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                  'Sofa Hitam Satu',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  'Rp 300.000,00',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 155,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const ItemPage();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              backgroundColor: kThirdColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/homeImage2.jpg',
                                width: 155,
                                height: 130,
                                fit: BoxFit.fill,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                  'Sofa Hitam Dua',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  'Rp 500.000,00',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 8,
            activeColor: kPrimaryColor,
            tabBackgroundColor: kThirdColor,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Beranda',
              ),
              GButton(
                icon: Icons.task,
                text: 'Aktivitas',
              ),
              GButton(
                icon: Icons.chat,
                text: 'Pesan',
              ),
              GButton(
                icon: Icons.person,
                text: 'Akun',
              ),
            ],
          ),
        ));
  }
}
