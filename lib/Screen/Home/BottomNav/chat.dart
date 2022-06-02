import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/img3.png"),height: 350,width: 350,),
              SizedBox(height: 20,),
              Text("Nobody to chat ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            ]),
      ),
    );
  }
}