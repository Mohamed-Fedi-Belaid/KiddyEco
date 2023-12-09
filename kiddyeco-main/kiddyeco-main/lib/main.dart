import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiddy_eco/levels/levelThree.dart';
import 'package:kiddy_eco/splash/spalsh0.dart';
import 'package:get/get.dart';
import 'package:kiddy_eco/splash/welcom_one.dart';

import 'levels/levelMain.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
// Use builder only if you need to use library outside ScreenUtilInit context
          builder: (_, child) {
            return Home();
          }),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Splash0(),
    );
  }
}
