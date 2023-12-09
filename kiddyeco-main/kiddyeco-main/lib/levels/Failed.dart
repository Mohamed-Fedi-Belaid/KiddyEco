import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiddy_eco/splash/splash1.dart';



import '../CustomPageRoute.dart';

class Failed extends StatefulWidget {
  const Failed({Key? key}) : super(key: key);

  @override
  State<Failed> createState() => _FailedState();
}

class _FailedState extends State<Failed> {
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
          image: DecorationImage(image: AssetImage("assets/images/failed.png"))
        ),
        child: Stack(
          children: [Positioned(
              top: 600,
              left: 35,
              child: Center(
                child: Container(

            height: 60,
            width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Center(child: Text('JE SOUFFRE',style: TextStyle(fontSize: 40),)),

          ),
              ))],
        ),

      ),);
  }
}
