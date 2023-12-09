import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiddy_eco/levels/progressIndicator.dart';



class RoadMap extends StatefulWidget {
  const RoadMap({Key? key}) : super(key: key);

  @override
  State<RoadMap> createState() => _RoadMapState();
}

class _RoadMapState extends State<RoadMap> {
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
            Positioned(

              child:  Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xFF0D261E),  Color(0xFF26735B)

                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),

                ),



              ),

            ),
            Positioned(
              top: 25.65.w,
              left: 30.w,
              child: Column(
                children: [
                  Row(
                    children: [

                      Container(
                          child:
                          Image.asset('assets/images/star.png')
                      ),
                      SizedBox(width: 20),
                      Text("300",style: TextStyle(color: Colors.white,fontSize: 30),),

                    ],
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            Positioned(
              top: 200,
                right: 50,
                child:  Text("plan de route", style: TextStyle(color: Colors.white,fontSize: 40),)
            ),




            Positioned(
              top: 280.w,
              left: 10.w,
              child: Container(
                  child:
                  Image.asset('assets/images/sun.png')
              ),
            ),
            Positioned(
              top: 424.w,
              child: Container(
                  child:
                  Image.asset('assets/images/Union.png')
              ),
            ),
            Positioned(
                top: 390.w,
                left: 65.w,
                child: Container(
                  height: 70.w,
                  width: 70.w,
                  decoration :BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(70)


                  ),


                )),
            Positioned(
              top: 397.w,
              left: 73.w,
              child: Container(
                  child:
                  Image.asset('assets/images/Locklock.png'),
              ),

            ),
            Positioned(
                top: 390.w,
                left: 253.w,
                child: Container(
                  height: 70.w,
                  width: 70.w,
                  decoration :BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(70)


                  ),


                )),
            Positioned(
              top: 398.w,
              left: 260.w,
              child: Container(
                  child:
                  Image.asset('assets/images/Playplay.png')
              ),

            ),


            Positioned(
                top: 525.w,
                left: 171.w,
                child: Container(
                  height: 70.w,
                  width: 70.w,
                  decoration :BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(70)


                  ),


                )),
            Positioned(
              top: 536.w,
              left: 185.w,
              child: Container(
                  child:
                  Image.asset('assets/images/Locklock.png')
              ),

            ),



            Positioned(
                top: 646.w,
                left: 171.w,
                child: Container(
                  height: 70.w,
                  width: 70.w,
                  decoration :BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(70)


                  ),


                )),
            Positioned(
              top: 655.w,
              left: 185.w,
              child: Container(
                  child:
                  Image.asset('assets/images/Locklock.png')
              ),

            ),



            Positioned(
                top: 680.w,
                left: 270.w,
                child: Container(
                  height: 70.w,
                  width: 70.w,
                  decoration :BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(70)


                  ),


                )),
            Positioned(
              top: 690.w,
              left: 285.w,
              child: Container(
                  child:
                  Image.asset('assets/images/Locklock.png')
              ),

            ),


            Positioned(
              top: 680.w,
              left: 10.w,
              child: Container(
                  height: 100,
                  child:
                  Image.asset('assets/images/tree.png')
              ),

            ),



          ],)
    );
  }
}
