import 'package:buangin/src/features/authentication/screens/angkutin_page/angkutin_page.dart';
import 'package:buangin/src/features/authentication/screens/beliin_page/beliin_page.dart';
import 'package:buangin/src/features/authentication/screens/jualin_page/jualin_landing_page.dart';
import 'package:flutter/material.dart';
import 'package:buangin/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  margin: const EdgeInsets.only(top: 40, bottom: 10),
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
                Container(
                  height: 150,
                  margin: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const AngkutinPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kThirdColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                constraints:
                                    const BoxConstraints(maxWidth: 160),
                                margin:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Angkutin',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: kPrimaryColor,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      'Solusi cepat untuk mengurangi perabotan bekas anda',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        color: kPrimaryColor,
                                        decoration: TextDecoration.none,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 60),
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Image.asset(
                                  'assets/images/angkutinLogo.png',
                                  width: 140,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  margin: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const JualinLandingPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kThirdColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                constraints:
                                    const BoxConstraints(maxWidth: 160),
                                margin:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jualin',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: kPrimaryColor,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      'Hasilkan uang dari perabotan bekas anda',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        color: kPrimaryColor,
                                        decoration: TextDecoration.none,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 40),
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Image.asset(
                                  'assets/images/jualinLogo.png',
                                  width: 120,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Beliin',
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
                                  return const AngkutinPage();
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
                                  return const AngkutinPage();
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
