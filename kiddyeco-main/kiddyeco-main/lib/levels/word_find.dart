import 'package:flutter/material.dart';
import 'package:kiddy_eco/splash/end_page.dart';
import 'package:kiddy_eco/splash/main_page.dart';
import 'package:kiddy_eco/splash/spalsh0.dart';
import 'package:kiddy_eco/widgets/custom_container.dart';
import 'package:kiddy_eco/widgets/lettre.dart';
import 'package:get/get.dart';

import '../splash/splash.dart';
import '../splash/splash1.dart';

class WordFind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF0D261E), Color(0xFF26735B)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text(
                    'GreenGuess',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Description',
                  style: TextStyle(color: Colors.amber, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 290,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 189, 182, 182),
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(color: Color(0xFF39B79), width: 5)),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            ' - Un élément chimique présent dans l'
                            'air et essentiel à la vie',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            ' Mais en excès, il peut contribuer au réchauffement de la planète',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      )),
                ),
                Image(
                  image: AssetImage('assets/images/voiture.png'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Text(
                      'CARBONE',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
                ),
                Row(
                  children: [
                    Lettre(number: 'X'),
                    Lettre(number: 'A'),
                    Lettre(number: 'K'),
                    Lettre(number: 'D'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10),
                  child: Row(
                    children: [
                      Lettre(number: 'E'),
                      Lettre(number: 'N'),
                      Lettre(number: 'C'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Lettre(number: 'B'),
                    Lettre(number: 'R'),
                    Lettre(number: 'O'),
                    Lettre(number: 'S'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomContainer(
                      icon: Icons.skip_next,
                      text: 'Continue',
                      function: () {
                        Get.to(EndPage());
                      }),
                ),
              ],
            )),
      ),
    );
  }
}
