import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/login_sing_up/Screens/sing_up/singup_screens3.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/custom_batton.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/custom_text_feld.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/rounded_button.dart';


class SingUP_screen2 extends StatefulWidget {
  const SingUP_screen2({Key? key}) : super(key: key);

  @override
  State<SingUP_screen2> createState() => _SingUP_screen2State();
}

class _SingUP_screen2State extends State<SingUP_screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('CREATE ACCOUNT',style: TextStyle(fontSize: 18)),
    actions: [
          Center(child: Text("Step 2/3")),
    ],
    automaticallyImplyLeading: false,
    ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marital Status',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
              SizedBox(height: 7,),
              Text('Marital status of the groom',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),),
              Wrap(
                spacing: 5,
                children: [
                  RoundedButton(press: (){},color:Color(0XFF046b4c),textColor: Colors.white,text: "Unmarried"),
                  RoundedButton(press: (){},color:Colors.grey.shade200,textColor: Colors.black,text: "Widower"),
                  RoundedButton(press: (){},color:Colors.grey.shade200,textColor: Colors.black,text: "Divorced"),
                  RoundedButton(press: (){},color:Colors.grey.shade200,textColor: Colors.black,text: "Separated"),
                  RoundedButton(press: (){},color:Colors.grey.shade200,textColor: Colors.black,text: "Married"),
                ],
              ),

              TextFeld(helperText: 'Country of Residence of groom', hintText: 'Country Living in'),
              SizedBox(height: 10,),
              TextFeld(helperText: 'Residing state of  groom', hintText: 'CResiding State'),
              SizedBox(height: 10,),
              TextFeld(helperText: 'Residing city of the groom', hintText: 'Residing City'),
              SizedBox(height: 10,),
              TextFeld(helperText: 'Citizenship of the groom', hintText: 'Select Citizenship'),
              SizedBox(height: 10,),
              Custom_Button(press: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SingUP_screen3()));
              }, text: "Continue", textColor: Colors.white, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
