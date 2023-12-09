import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  late IconData icon;
  late String text;
  late Function function;

 CustomContainer({
    super.key,
      required this.icon ,
    required this.text,
    required this.function});


  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.function();
      },
      child: Container(
        padding: EdgeInsets.all(20),
        width: 210,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.green, width: 1)),
        child: Row(
          children: [
            SizedBox(width: 35),
            Text(
              widget.text,
              style: TextStyle(fontSize: 17),
            ),
            Icon(
              widget.icon,
              size: 23,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
