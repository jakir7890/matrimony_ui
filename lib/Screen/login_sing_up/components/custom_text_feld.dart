import 'package:flutter/material.dart';

class TextFeld extends StatelessWidget {
  final String hintText;
  final String helperText;

  const TextFeld({Key? key,required this.helperText,required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        helperText:helperText,
          enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
      ),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0XFF046b4c)))
      ),
    );
  }
}
