import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiddy_eco/splash/splash.dart';


class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigatSplash();

  }

  navigatSplash()async{
    await Future.delayed(Duration(seconds:1),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> Splash()));
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
            )
        ),


      ),
    );
  }
}
