import 'dart:io';

import 'package:buangin/constants.dart';
import 'package:buangin/src/features/authentication/screens/angkutin_page/angkutin_landing_page.dart';
import 'package:buangin/src/features/authentication/screens/home_page/home_page.dart';
import 'package:buangin/src/widget_components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class JualinPage extends StatefulWidget {
  const JualinPage({super.key});

  @override
  State<JualinPage> createState() => _JualinPageState();
}

class _JualinPageState extends State<JualinPage> {

  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? imagePicked = await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {
      
    });
  }

  final _formState = GlobalKey<FormState>();
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: kThirdColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 60, left: 30, right: 30),
              child: Form(
                key: _formState,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Informasi Perabot',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kThirdColor,
                          decoration: TextDecoration.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 10),
                      child: const Text('Nama perabot',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: kThirdColor,
                            decoration: TextDecoration.none,
                          )),
                    ),
                    TextFormField(
                      controller: textController,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Nama perabot tidak valid";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan nama perabot',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: kThirdColor,
                            decoration: TextDecoration.none,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 10),
                      child: const Text('Deskripsi perabot',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: kThirdColor,
                            decoration: TextDecoration.none,
                          )),
                    ),
                    TextFormField(
                      controller: textController,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Deskripsi perabot tidak valid";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan deskripsi perabot',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: kThirdColor,
                            decoration: TextDecoration.none,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 10),
                      child: const Text('Harga perabot',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: kThirdColor,
                            decoration: TextDecoration.none,
                          )),
                    ),
                    TextFormField(
                      controller: textController,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^\d+$').hasMatch(value)) {
                          return "Harga perabot tidak valid";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan harga perabot (Contoh: 150000)',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: kThirdColor,
                            decoration: TextDecoration.none,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 10),
                      child: const Text('Unggah gambar perabot',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: kThirdColor,
                            decoration: TextDecoration.none,
                          )),
                    ),
                    image != null ? SizedBox(height: 200, width: MediaQuery.of(context).size.width ,child: Image.file(image!, fit: BoxFit.cover,)) : Container(),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kThirdColor,
                        padding: const EdgeInsets.all(10)),
                      onPressed: () async{
                        await getImage();
                      },
                      child: const Text(
                        'Unggah gambar',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RoundedButton(
                        key: const Key('button_login'),
                        text: "JUAL",
                        press: () {
                          if (_formState.currentState!.validate()) {
                            //ini nanti arahin ke database
                          } else {}
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
