import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:matrimony_ui/Screen/login_sing_up/Screens/sing_up/singup_screen1.dart';
import 'package:matrimony_ui/Screen/login_sing_up/Screens/welcome/welcome_screen.dart';
import 'package:matrimony_ui/Screen/profile_create.dart';
import 'package:matrimony_ui/const/appColor.dart';
import 'package:matrimony_ui/const/screenNavigation.dart';

class SingIn extends StatelessWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
     body:   Center(
       child: Padding(
         padding: const EdgeInsets.all(32),
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
                  Spacer(),
                  FlutterLogo(
                    size: 120,
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Hey There,\nWelcome Back",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Spacer(),
                  SignInButton(
                    Buttons.Google, 
                    text: "Sign In with Google",
                  onPressed: (){}),
                     SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not Register Yet?",
                          style: TextStyle(
                            fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: Colors.black87),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(Sing_up_1());
                          },
                          child: const Text(
                            "Create Profile",
                            style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                     Spacer()
                  
            ],
          ),
       ),
     ),
      
      
      );
 
  }
}