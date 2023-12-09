import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiddy_eco/splash/welcom_one.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigatehome();

  }

  navigatehome()async{
    await Future.delayed(Duration(seconds:2),(){});
  //  Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> OnBoard()));
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

        child:Container(
          decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage('assets/images/logo.png'),


              )
          ),

          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  top: 670,
                  right: 20,
                  child: ElevatedButton(
                    //style: Colors.white,
                    onPressed: () { Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> WelcomeOne())); },
                child: Text("suivant"),


              ))
            ],
          ),

        ),

      ),

    );
  }
}
