import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiddy_eco/splash/splash1.dart';



import '../CustomPageRoute.dart';

class Win extends StatefulWidget {
  const Win({Key? key}) : super(key: key);

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF0D261E),  Color(0xFF26735B)

                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
            image: DecorationImage(image: AssetImage("assets/images/win.png"))
        ),
        child: Stack(
          children: [Positioned(
              top: 600,
              left: 35,
              child: Center(
                child: Container(

                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Center(child: Text('BRAVO pour choisir d`investir dans un avenir meilleur en optant pour la plantation d`un arbre, tu es un bon enfant malgré les défis climatiques actuels',style: TextStyle(fontSize: 15),)),

                ),
              ))],
        ),

      ),);
  }
}
