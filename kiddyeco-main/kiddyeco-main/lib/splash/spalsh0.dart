import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiddy_eco/splash/splash1.dart';



import '../CustomPageRoute.dart';
import '../widgets/custom_container.dart';

class Splash0 extends StatefulWidget {
  const Splash0({Key? key}) : super(key: key);

  @override
  State<Splash0> createState() => _Splash0State();
}

class _Splash0State extends State<Splash0> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigatSplash1();

  }

  navigatSplash1()async{
    await Future.delayed(Duration(milliseconds:800),(){});
    Navigator.pushReplacement(context,CustomPageRoute(child:Splash1(),direction: AxisDirection.up));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(

          decoration: BoxDecoration(

            image:  DecorationImage(
              image: AssetImage('assets/images/logo.png')
            ),

          ),

        )

    );
  }
}
