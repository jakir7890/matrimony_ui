
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final VoidCallback press;
  final Color? color, textColor;
  const RoundedButton({
    Key? key,
    this.text,
    required this.press,
    this.color,
    this.textColor= Colors.white,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
   // Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
            primary: color,
          ),
          child: Text(
            text!,
            style: TextStyle(color: textColor,
            ),
          ),
          onPressed: press,
        ),
      ),
    );
  }
}