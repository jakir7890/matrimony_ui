import 'package:flutter/material.dart';

class MatchedProfile extends StatelessWidget {
  const MatchedProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image(image: AssetImage("assets/images/img2.jpg"),height: 200,width: 200,),
              SizedBox(height: 20,),
              Text("No Matched Profile ! ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
        ]),
      ),
    );
  }
}