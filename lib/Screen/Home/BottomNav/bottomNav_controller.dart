import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/Home/BottomNav/chat.dart';
import 'package:matrimony_ui/Screen/Home/BottomNav/home.dart';
import 'package:matrimony_ui/Screen/Home/BottomNav/matched.dart';
import 'package:matrimony_ui/Screen/Home/BottomNav/profile.dart';
import 'package:matrimony_ui/const/appColor.dart';



class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
     int index = 0;
  final screens = const [Home(),
                  MatchedProfile(),
                  Chats(), 
                  Profile()];

  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: kSecondaryColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text("No notification here.",
                      textAlign: TextAlign.center),
                  duration: Duration(seconds: 1),
                  backgroundColor: kSecondaryColor,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {
            final snackBar = SnackBar(
              content: Text("The helpline is temporarily closed :(",
                  textAlign: TextAlign.center),
              duration: Duration(seconds: 1),
              backgroundColor: kSecondaryColor,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, icon: Icon(Icons.headset_mic)),
        ],
        elevation: 0,
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: kSecondaryColor,
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 12, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          height: 60,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.join_full_outlined), label: 'Matched Profile'),
            NavigationDestination(
                icon: Icon(Icons.chat_bubble_outline), label: 'Chats'),
            NavigationDestination(
                icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
          ],
        ),
      ),
    );
      }
    }

