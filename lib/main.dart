import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/Home/BottomNav/signIn.dart';
// import 'package:matrimony_ui/Screen/profile_create.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SingIn(),
    );
  }
}



 
 




// import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
   CustomeTextField({ Key? key, this.controller, this.keyboardType, this.validator, this.obscureText =false, this.labelText, this.hintText, this.prefixIcon, this.suffixIcon }) : super(key: key);
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText ;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade400.withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,          
        ),
      ),
    );
  }
}