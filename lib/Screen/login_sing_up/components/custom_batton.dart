import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  final String? text;
  final VoidCallback press;
  final Color? color, textColor;

  const Custom_Button({
    Key? key,
    required this.press,
    required this.text,
    required this.textColor,
    required this.color
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(height: 50, width: size.width),
        child: ElevatedButton(
          onPressed: press,
          child: Text(text!),
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: color!,
              textStyle: TextStyle(color: textColor!),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
        ));
  }
}
