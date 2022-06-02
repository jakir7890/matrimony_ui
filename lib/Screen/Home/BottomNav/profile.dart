import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/img4.png"),height: 350,width: 350,),
              //SizedBox(height: 5,),
              Text("Unable to load profile ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
            ]),
      ),
    );
  }
}