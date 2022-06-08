import 'package:flutter/material.dart';

class RoundedPasswordFiled extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedPasswordFiled({
    Key? key,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  @override
  State<RoundedPasswordFiled> createState() => _RoundedPasswordFiledState();
}

class _RoundedPasswordFiledState extends State<RoundedPasswordFiled> {
  var obscureText = false;
  @override
  Widget build(BuildContext context) {

    return TextField(

        obscureText: obscureText,
        onChanged: widget.onChanged,
        controller: widget.controller,
        decoration: InputDecoration(
          helperText: "Enter a password to keep your account secure",
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0XFF046b4c))),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          hintText: "Password",
          icon: const Icon(
            Icons.lock_outline,
            color: Color(0XFF046b4c),
          ),
          suffixIcon: GestureDetector(
              onTap: () {

                setState(() {
                  print("object");
                  obscureText = !obscureText;
                });
              },
              child: obscureText ?
              const Icon(
                Icons.visibility_off_outlined,
                color: Colors.grey,
              )
                  : const Icon(
                Icons.visibility,
                color: Color(0XFF046b4c),
              )),
          border: InputBorder.none,
        ),

    );
  }
}
