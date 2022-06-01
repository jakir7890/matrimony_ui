import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/Home/BottomNav/bottomNav_controller.dart';
import 'package:matrimony_ui/Screen/component/radiobutton.dart';
import 'package:matrimony_ui/const/appColor.dart';
import 'package:matrimony_ui/main.dart';

class ProfileCreate extends StatelessWidget {
  const ProfileCreate({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
            Padding(
              padding: const EdgeInsets.only(top:80),
              child: const Text("Tell us about you", style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10.0,
            ),
      
      
        CustomeTextField(
          hintText: "Name", 
          prefixIcon: Icon(Icons.person, color: Colors.black54,),
        ),
        CustomeTextField(
          hintText: "Email", 
          prefixIcon: Icon(Icons.email, color: Colors.black54,),
        ),
        CustomeTextField(
          prefixIcon: Icon(Icons.phone_android),
          hintText: "Phone Number",
        ),
        CustomeTextField(
          prefixIcon: Icon(Icons.lock),
          hintText: "Password",
          obscureText: true,
        ),
      
          
      
          RadioGroup(),
          const SizedBox(
                height: 15.0,
              ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(300, 40),
            primary: Colors.black54,
            
          ),
          onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: ((context) => const BottomNavBar())));

          }, 
          child: Text("Create Acount", style: TextStyle(fontSize: 20),))
      
      
          ],),
        ),
      ),

    );
  }
}

