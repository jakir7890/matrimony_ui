import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/login_sing_up/Screens/congratulations_page.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/custom_batton.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/custom_text_feld.dart';


class SingUP_screen3 extends StatefulWidget {
  const SingUP_screen3({Key? key}) : super(key: key);

  @override
  State<SingUP_screen3> createState() => _SingUP_screen3State();
}

class _SingUP_screen3State extends State<SingUP_screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('CREATE ACCOUNT',style: TextStyle(fontSize: 18)),
    actions: [
        Center(child: Text("Step 3/3")),
    ],
    automaticallyImplyLeading: false,
    ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFeld(helperText: 'Height of the groom', hintText: '5ft 3in /152 cm'),
              SizedBox(height: 10,),
              TextFeld(helperText: 'Highest educational of the groom', hintText: 'Education'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'About Me',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0XFF046b4c)))
                ),
                maxLines: 4,
                maxLength: 50,
              ),
              SizedBox(height: 10,),
              Custom_Button(press: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Congratulations_page()));
              }, text: "Continue", textColor: Colors.white, color: Colors.red),
            ],
          ),
        ),
      ),

    );
  }
}
