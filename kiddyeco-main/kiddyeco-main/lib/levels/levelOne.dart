import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kiddy_eco/levels/word_find.dart';

import '../widgets/lettre.dart';

class LevelOne extends StatefulWidget {
  @override
  State<LevelOne> createState() => _LevelOneState();
}

class _LevelOneState extends State<LevelOne> {
  var x = 2;
  var y = 1;
  void changeimage() {
    x = Random().nextInt(3) + 1;
    y = Random().nextInt(3) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF0D261E), Color(0xFF26735B)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage('assets/images/earth.png')),
            Text(
              x == y ? 'vous avez gagné !' : ' autre fois ',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            changeimage();
                          });
                        },
                        child: Image(
                          image: AssetImage('assets/image/$x.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            changeimage();
                          });
                        },
                        child: Image(
                          image: AssetImage('assets/image/$y.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
           ElevatedButton(
                    //style: Colors.white,
                    onPressed: () { Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> WordFind())); },
                    child: Text("suivant"),



              ),

          ],
        ),
      ),
    );
  }
}
