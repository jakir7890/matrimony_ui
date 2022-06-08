
import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/login_sing_up/Screens/sing_up/singup_screen2.dart';
import 'package:matrimony_ui/Screen/login_sing_up/Screens/welcome/welcome_screen.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/custom_batton.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/custom_text_feld.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/date_picker.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/gender.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/password_filed.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/phone_numder.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/relegion_menu.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/rounded_button.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/select_mother_tongue.dart';

class Sing_up_1 extends StatefulWidget {
  const Sing_up_1({Key? key}) : super(key: key);

  @override
  State<Sing_up_1> createState() => _Sing_up_1State();
}

class _Sing_up_1State extends State<Sing_up_1> {
  TextEditingController passwordControllr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CREATE ACCOUNT',style: TextStyle(fontSize: 18)),
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>WelcomePage()));}, icon: Icon(Icons.login),)
        ],
        automaticallyImplyLeading: false,
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Find Your Suitable Match!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 20,),
              Text('Profile Created By',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
              SizedBox(height: 7,),
              Text('Select who is creating profile',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),),
              Wrap(
                spacing: 5,
                children: [
                  RoundedButton(press: (){},color:Color(0XFF046b4c),textColor: Colors.white,text: "Self"),
                  RoundedButton(press: (){},color:Colors.grey.shade200,textColor: Colors.black,text: "Parent"),
                  RoundedButton(press: (){},color:Colors.grey.shade200,textColor: Colors.black,text: "Sibling"),
                  RoundedButton(press: (){},color:Colors.grey.shade200,textColor: Colors.black,text: "Relative"),
                  RoundedButton(press: (){},color:Colors.grey.shade200,textColor: Colors.black,text: "Friend"),
                ],
              ),
              Genderbatton(),
              SizedBox(height: 10,),
              TextFeld(helperText: 'Enter the name of  bride / groom', hintText: "Name" ),
              SizedBox(height: 10,),
              Date_Picker(onChanged: (value)=>{}),
              SizedBox(height: 10,),
              TextFeld(helperText: 'This will be used to all send communication', hintText: "Emil" ),
              SizedBox(height: 10,),
              RoundedPasswordFiled(onChanged: (value)=>{}, controller: passwordControllr),
              SizedBox(height: 10,),
              PhoneNumber(),
              SizedBox(height: 10,),
              Select_Mother_Tongue(),
              SizedBox(height: 10,),
              ReligionMenu(),
              SizedBox(height: 10,),
              Custom_Button(press: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SingUP_screen2()));
              }, text: "Continue", textColor: Colors.white, color: Colors.red),

            ],
          ),
        ),
      )
    );
  }
}
