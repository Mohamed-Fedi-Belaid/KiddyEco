import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



import 'package:get/get.dart';
import 'package:kiddy_eco/splash/main_page.dart';
import 'package:kiddy_eco/splash/splash.dart';
import 'package:kiddy_eco/widgets/custom_container.dart';
import 'package:kiddy_eco/widgets/input_text.dart';

class WelcomeOne extends StatefulWidget {
  const WelcomeOne({Key? key}) : super(key: key);

  @override
  State<WelcomeOne> createState() => _WelcomeOneState();
}

class _WelcomeOneState extends State<WelcomeOne> {

  late String name;


  TextEditingController UserNameController = TextEditingController();




  //create the service class object
  Service service = Service();


  void openLoginPage(){
    Navigator.of(context).pushReplacementNamed('LoginPage');
  }








  PageController _pageController = PageController(initialPage: 0);

  int _childIndex = 0;
  List<Widget> _children = [


  ];
  //RegistrationController registrationController=Get.put(RegistrationController());
  //LoginController loginController =Get.put(LoginController());

  var isLogin =false.obs;


  double _backgroundImagePosition = 0;
  double _lastOffset =0;

  bool showSignUpForm = false;
  bool showSignUptwoForm= false;

  void _switchToSignUpForm() {
    setState(() {
      showSignUpForm = true;
    });
  }

  void _switchToSignInForm() {
    setState(() {
      showSignUpForm = false;
    });
  }
  void _switchToSignUptwoForm() {
    setState(() {
      showSignUpForm = false;
    });
  }



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: Stack(
            children: [
              Positioned.fill(
            top: _backgroundImagePosition,
            bottom:108,


                child:  Container(
                  height: 350,
                  width: 350,

                  decoration: BoxDecoration(

                      image:DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.cover


                      )

                )
              ),),
              Container(
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                      colors: [
                        Color(0xFF0D261E),  Color(0xFF26735B)

                      ],

                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),

                ),),
              Positioned(
                  top:550,
                  child: Container(
                    padding: EdgeInsets.all(15),
                      child: Text.rich(
                        TextSpan(
                          children:[
                            TextSpan(text: "Balayez vers le haut",style: GoogleFonts.lato(fontSize: 30,color: Color(0xFFFFFFFF),fontWeight: FontWeight.w900,) ),

                          ])),
              ),),

              Container(

                margin: EdgeInsets.only(top: 150),
                child: Column(

                  children: [
                    Image.asset("assets/images/logo.png")

                  ],
                ),
              ),
              SizedBox(
                 // height: MediaQuery.of(context).size.height * 0.7,

                  child: Listener(
                    onPointerMove: (details) {
                      // Update the position of the background image based on the position of the sheet
                      setState(() {
                        _backgroundImagePosition = details.delta.dy-450;

                        // If the user swipes down and the background image position is greater than zero, reset it to zero
                        if (details.delta.dy >0 && _backgroundImagePosition < -MediaQuery.of(context).size.height * 0.8) {
                          _backgroundImagePosition = -MediaQuery.of(context).size.height ;
                        } else if (details.delta.dy >0 && _backgroundImagePosition > 0) {
                          _backgroundImagePosition = 0;
                        }

                        _lastOffset = details.delta.dy;

                      }
                      );
                    },
                    /* onPointerUp: (details) {
                      // If the user releases the drag and the background image position is between zero and the negative of the sheet height, animate it back to zero
                      if (_backgroundImagePosition.abs() < MediaQuery.of(context).size.height * 0.4) {
                        setState(() {
                          _backgroundImagePosition = 0;
                        });
                      } else {
                        // If the user releases the drag and the background image position is greater than the negative of the sheet height, animate it to the negative of the sheet height
                        setState(() {
                          _backgroundImagePosition = -MediaQuery.of(context).size.height * 0.8;
                        });
                      }
                    },*/

                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: DraggableScrollableSheet(

                        snap: true,
                        initialChildSize: 0.1, // This sets the initial height of the sheet
                        minChildSize: 0.1, // This sets the minimum height of the sheet
                        maxChildSize: 0.3, // This sets the maximum height of the sheet
                        builder: (BuildContext context, ScrollController scrollController) {
                          return Container(
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                          ),
                            child: ListView(
                                physics: ClampingScrollPhysics(),
                              padding: EdgeInsets.only(top:45,right: 17,left: 17,bottom:16),
                              controller: scrollController,
                              children:[
                                Container(
                                  height: 150.w,
                                  child: PageView(
                                  //padding: EdgeInsets.only(top:45,right: 17,left: 17,bottom:16),
                                  controller: _pageController,
                                  children:[
                                    Form(

                                        child: Column(
                                  children:[
                                    InputText(nameText: "prénom", hint:" entrer votre prénom", iconData: Icons.child_care),
                                    CustomContainer(icon: Icons.navigate_next, text: "continue", function: (){
                                      Get.to(MainPage());
                                    })

                                  ]
                                        )
                                    ),




                                  /*Visibility(
                                  visible: !showSignUpForm,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top:00.0),
                                        child: Form(

                                            child: Column(

                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  // SizedBox(height: 40,),
                                                  Divider(
                                                    color: Colors.black,
                                                    indent: 140,
                                                    endIndent: 140,
                                                    thickness: 3,
                                                  ),
                                                  SizedBox(height: 28),
                                                  Text("Enter to your account",style: TextStyle(fontSize: 18),),
                                                  SizedBox(height: 17,),
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("E-mail or Username"),
                                                        TextFormField(

                                                          decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(vertical:15 , horizontal: 12),
                                                            border: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFFE9E9E9),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFFE9E9E9),
                                                                  width: 1.0,

                                                                )


                                                                ,borderRadius: BorderRadius.circular(10)
                                                            ),


                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 17),
                                                  Container(

                                                    child: Column(

                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Password"),
                                                        TextFormField(
                                                          onSaved: (input) {},
                                                          decoration: InputDecoration(
                                                              contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                              border: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(0xFFE9E9E9),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius: BorderRadius.circular(10)
                                                              ),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(0xFFE9E9E9),
                                                                    width: 1.0,

                                                                  )
                                                                  ,borderRadius: BorderRadius.circular(10)
                                                              ),
                                                              hintText: 'Enter your password..',
                                                              hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                          ),
                                                          obscureText: true,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [

                                                        Text("Forgot the password ?",style: TextStyle(fontSize: 14),)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 34,),
                                                  Container(
                                                    width: 329,
                                                    height: 52,

                                                    child:ElevatedButton(

                                                      onPressed: () {
                                                        // Add your button click logic here
                                                      },
                                                      child: GestureDetector(

                                                          onTap: (){
                                                            Navigator.push(context,MaterialPageRoute(builder: (context) => MainEventPage()));
                                                          },
                                                          child: Text('Login',style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w400),)),
                                                      style: ButtonStyle(
                                                        elevation: null,

                                                        backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFFED540)
                                                        ),
                                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10.0),
                                                          ),
                                                        ),

                                                      ),


                                                    ),
                                                  ),
                                                  SizedBox(height: 28,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children:[

                                                      GestureDetector(
                                                          onTap: _switchToSignUpForm,
                                                          child: Text('signUp')
                                                      ),




                                                    ],

                                                  )


                                                ]
                                            )
                                        ),
                                      )),
                              ),
                                  AnimatedCrossFade(
                                      duration: const Duration(milliseconds: 300),
                                      crossFadeState: showSignUpForm
                                          ? CrossFadeState.showSecond
                                          : CrossFadeState.showFirst,
                                      firstChild: SizedBox.shrink(),
                                      secondChild: Form(
                                        child: Column(
                                            children: <Widget>[

                                                SizedBox(height: 20,),

                                                Container(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Name"),
                                                      SizedBox(height: 6,),
                                                      TextFormField(
                                                        onSaved: (input) {},
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                            border: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFFE9E9E9),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFFE9E9E9),
                                                                  width: 1.0,

                                                                )
                                                                ,borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            hintText: 'Name..',
                                                            hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                        ),
                                                        obscureText: true,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 17),
                                                Container(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Surname"),
                                                      SizedBox(height: 6,),
                                                      TextFormField(
                                                        onSaved: (input) {},
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                            border: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFFE9E9E9),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFFE9E9E9),
                                                                  width: 1.0,

                                                                )
                                                                ,borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            hintText: 'Surname..',
                                                            hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                        ),
                                                        obscureText: true,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 16.0),
                                                Container(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Username"),
                                                      SizedBox(height: 6,),
                                                      TextFormField(
                                                        onSaved: (input) {},
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                            border: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFFE9E9E9),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFFE9E9E9),
                                                                  width: 1.0,

                                                                )
                                                                ,borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            hintText: 'Username..',
                                                            hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                        ),
                                                        obscureText: true,
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                SizedBox(height: 34,),
                                                Container(
                                                  width:193,
                                                  height: 52,

                                                  child:ElevatedButton(

                                                      onPressed:
                                                        _switchToSignUptwoForm
                                                        // Add your button click logic here
                                                      ,
                                                      child: Text('Next'),
                                                      style: ButtonStyle(

                                                        elevation: null,

                                                        backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFFED540)
                                                        ),
                                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(30.0),
                                                          ),
                                                        ),

                                                      )
                                                  ),
                                                ),


                                              ]

                            ),
                                      )),

                                  AnimatedCrossFade(
                                      duration: const Duration(milliseconds: 300),
                                      crossFadeState: showSignUptwoForm
                                          ? CrossFadeState.showSecond
                                          : CrossFadeState.showFirst,
                                      firstChild: SizedBox.shrink(),
                                      secondChild: Column(
                                          children: <Widget>[
                                      Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      ),
                                    child: Form(

                                        child: Column(

                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            SizedBox(height: 80,),

                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("pass"),
                                                  TextFormField(
                                                    onSaved: (input) {},
                                                    decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                        border: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color: Color(0xFFE9E9E9),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10)
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color: Color(0xFFE9E9E9),
                                                              width: 1.0,

                                                            )
                                                            ,borderRadius: BorderRadius.circular(10)
                                                        ),
                                                        hintText: 'Enter your password..',
                                                        hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                    ),
                                                    obscureText: true,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 17),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Surname"),
                                                  TextFormField(
                                                    onSaved: (input) {},
                                                    decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color(0xFFE9E9E9),
                                                          width: 2.0,
                                                        ),
                                                      ),


                                                    ),

                                                    obscureText: true,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 16.0),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Username"),
                                                  TextFormField(
                                                    onSaved: (input) {},
                                                    decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color(0xFFE9E9E9),
                                                          width: 2.0,
                                                        ),
                                                      ),


                                                    ),

                                                    obscureText: true,
                                                  ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(height: 34,),
                                            Container(
                                              width: 329,
                                              height: 52,

                                              child:ElevatedButton(

                                                  onPressed: () {
                                                    // Add your button click logic here
                                                  },
                                                  child: Text('Next'),
                                                  style: ButtonStyle(

                                                    backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFFED540)
                                                    ),
                                                  )
                                              ),
                                            ),


                                          ],

                                        )

                                    ),
                                  ),
                                          ]

                                      ))*/
                              ]
                            ),
                                ),
                          ]));
                        }

                        ,),
                    ),
                  ),

              )


            ],
          ),
        ),



      ),
    );
  }
}