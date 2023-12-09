import 'package:flutter/material.dart';

class Lettre extends StatefulWidget {
  late String number;

  Lettre({super.key, required this.number});

  @override
  State<Lettre> createState() => _LettreState();
}

class _LettreState extends State<Lettre> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 35, bottom: 1, right: 10),
      child: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(35),
              border: Border.all(color: Colors.black, width: 1)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 15, right: 10, left: 19, bottom: 4),
            child: Text(
              widget.number,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
