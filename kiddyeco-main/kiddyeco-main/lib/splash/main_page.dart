import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiddy_eco/levels/levelMain.dart';
import 'package:kiddy_eco/levels/levelOne.dart';
import 'package:kiddy_eco/levels/word_find.dart';
import 'package:kiddy_eco/splash/splash.dart';
import 'package:kiddy_eco/widgets/custom_container.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF0D261E), Color(0xFF26735B)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(top: 120, right: 50, left: 50),
            child: Container(
              width: 450,
              height: 550,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: Color(0xFF39B79), width: 5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hey les amis, notre Terre a besoin de nous, surtout avec tous ces changements de climat. Soyons sympas avec elle, économisons l'
                  'eau, ramassons les déchets, et aimons les plantes et les animaux. Faisons de petits gestes pour rendre notre Terre heureuse, même quand le temps devient fou Merci daider et de faire une différence pour notre planète !" 🌍💚',
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 425,
            right: 40,
            left: 50,
            child: Image(image: AssetImage('assets/images/person.png'))),
        Positioned(
          top: 690,
          right: 50,
          left: 50,
          child: GestureDetector(
            onTap: () {
              Get.to(LevelMain());
            },
            child: Container(
              padding: EdgeInsets.all(10),
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.green, width: 5)),
              child: Row(
                children: [
                  SizedBox(width: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      'Commencer',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.skip_next,
                    size: 23,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
