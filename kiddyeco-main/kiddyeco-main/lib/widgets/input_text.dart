import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  late String nameText;
  late String hint;
  late IconData iconData;


  InputText({
    super.key,
    required this.nameText,
    required this.hint,
    required this.iconData,

  });



  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(widget.iconData, size: 30),
          label: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.nameText,
              style: TextStyle(
                  color: Color(0xFF26735B), fontSize: 20),
            ),
          ),
          hintText: widget.hint,
          hintMaxLines: 2,
          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    ); ;
  }
}
