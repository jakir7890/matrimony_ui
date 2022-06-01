import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/component/custom_container.dart';
import 'package:matrimony_ui/const/appColor.dart';



class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    int _index = 1;

  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
        appBar: AppBar(
          title: Text('Home',style: TextStyle(color: kSecondaryColor),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        
        extendBody: true,
        body: Column(
          children: [
            
            CistomContainer(),
            SizedBox(height: 5.0,),
           
            CistomContainer(),
            SizedBox(height: 5.0,),
           
            CistomContainer(),
            SizedBox(height: 5.0,),
           
          ],
        ),
          bottomNavigationBar: FloatingNavbar(


            backgroundColor: kSecondaryColor,
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.join_full_outlined, title: 'Matched Profile'),
            FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
            FloatingNavbarItem(icon: Icons.account_circle_outlined, title: 'Profile'),
          ],
        ),
        
        );
      }
    }

