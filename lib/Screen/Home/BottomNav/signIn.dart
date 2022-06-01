import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    icon: FaIcon(FontAwesomeIcons.google, color: Colors.red,),
                    onPressed: () {}, label: Text("Sing In with Google")),
                    const Spacer(),
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
                            navigateToNextSceen(context, ProfileCreate());
                          },
                          child: const Text(
                            "Create Profile",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.black87),
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