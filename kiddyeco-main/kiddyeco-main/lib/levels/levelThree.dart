import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiddy_eco/levels/Failed.dart';
import 'package:kiddy_eco/levels/Win.dart';
import 'package:kiddy_eco/levels/levelOne.dart';
import 'package:kiddy_eco/splash/splash.dart';


class LevelThree extends StatefulWidget {
  const LevelThree({Key? key}) : super(key: key);

  @override
  State<LevelThree> createState() => _LevelThreeState();
}

class _LevelThreeState extends State<LevelThree> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body:Stack(
        children: [
          Positioned(child: Image.asset("assets/images/chyeh.png",fit: BoxFit.fill,width: double.infinity,height: double.infinity,)),

          Positioned(
              top: 150,
              right: 20,
              child: Container(
            height: 100,
            width: 300,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('En hiver, malgré la chaleur inhabituelle à cause du changement climatique, tu dois choisir entre hacher un arbre pour la maison de ton chien ou planter un arbre pour l`avenir. Que choisis-tu ?')),
                )
          )),

          Positioned(
            top: 350.w,

              child: Container(
                  height: 200.w,
                  width: 200.w,
                  child: Image.asset("assets/images/kid1.png"))),
          Positioned(
              top: 275.w,
              right: 160.w,

              child:
              GestureDetector(
                 onTap:(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Failed()));
    },
                child: Container(

                    height: 100.w,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/images/axe.png")),
              )),
          Positioned(
              top: 275.w,
              right: 50.w,

              child: GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Win()));
                },
                child: Container(
                    height: 100.w,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      ),
                    child: Image.asset("assets/images/chejra.png")),
              )),
          Positioned(
              top: 670,
              right: 20,
              child: ElevatedButton(
                //style: Colors.white,
                onPressed: () { Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> LevelOne())); },
                child: Text("suivant"),


              ))


        ],
      ),

    );
  }
}
