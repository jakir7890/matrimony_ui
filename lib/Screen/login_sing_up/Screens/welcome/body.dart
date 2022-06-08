import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/Home/BottomNav/signIn.dart';
import 'package:matrimony_ui/Screen/login_sing_up/Screens/sing_up/singup_screen1.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Text(
            'Welcome To Matrimony ',
            style: TextStyle(
                color: Color(0XFF046b4c), fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 50),
        Container(
          width: size.width * 0.8,
          child: Text(
            "your information is safe with us.\nYou can also view\nyour personal details",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              width: size.width * 0.4,
              child: ClipRRect(
                //borderRadius: BorderRadius.circular(29),
                child: TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(color: Colors.red)))),
                    child: Text("sing up"),
                    onPressed: () {
                      print("sing up");
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Sing_up_1()));
                    }),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                width: size.width * 0.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      primary: Colors.red,
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print("Login");
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SingIn()));

                    },
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
