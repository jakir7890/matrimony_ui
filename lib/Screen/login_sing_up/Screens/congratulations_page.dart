import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/Home/BottomNav/bottomNav_controller.dart';
import 'package:matrimony_ui/Screen/login_sing_up/components/custom_batton.dart';
import 'package:matrimony_ui/Screen/profile_create.dart';

class Congratulations_page extends StatelessWidget {
  const Congratulations_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/like.png'))),
              ),
            ),
            SizedBox(height: 20,),
            Text("Congratulations!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 38 ),),
            SizedBox(height: 20,),
            Text("You have successfully registered with\nMatrimony App",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15 )),
            SizedBox(height: 10,),
            Text("You can login using your Matrimony ID\n(BGD1659181)or your registered Email. A \nconfirmation email has been sent to your\nregistered Email address",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15 )),
            SizedBox(height: 30,),
            Custom_Button(press: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomNavBar()));
            }, text: "Continue", textColor: Colors.white, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
