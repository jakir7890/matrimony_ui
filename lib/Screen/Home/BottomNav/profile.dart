import 'package:flutter/material.dart';
import 'package:matrimony_ui/const/appColor.dart';
import 'package:matrimony_ui/widget/custrom_leading.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text('Profile'),
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
      ),
     
        body: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(image: AssetImage('assets/images/img1.jpg'))
                  ),
                   ),
                   SizedBox(width: 15,),
                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('J M Ziauddin Piaual'),
                       Text('BGD1657482'),
                       Text('Membership - free')
                     ],
                   )
                ],
              ),
            ),
             SizedBox(height: 20,),
          customLeading(icon: Icon(Icons.person,color: Colors.black,), text: 'Matches'),
          customLeading(icon: Icon(Icons.mail,color: Colors.black,), text: 'Mailbox',
          // onClicked: ()=>Get.to(OfferView())
          ),
          customLeading(icon: Icon(Icons.calendar_month,color: Colors.black,), text: 'Daily Matches'),
          customLeading(icon: Icon(Icons.chat,color: Colors.black,), text: 'Chat'),
          customLeading(icon: Icon(Icons.edit,color: Colors.black,), text: 'Edit Profile'),
          customLeading(icon: Icon(Icons.person,color: Colors.black,), text: 'Edit Partner Preference'),
          customLeading(icon: Icon(Icons.contact_phone_rounded,color: Colors.black,), text: 'Contract History'),
          customLeading(icon: Icon(Icons.mobile_screen_share_sharp,color: Colors.black,), text: 'SMS History'),
          customLeading(icon: Icon(Icons.upgrade,color: Colors.black,), text: 'Upgrade Now'),
          customLeading(icon: Icon(Icons.privacy_tip_rounded,color: Colors.black,), text: 'Privacy Settings'),
          customLeading(icon: Icon(Icons.notifications,color: Colors.black,), text: 'Notification Settings'),
          customLeading(icon: Icon(Icons.account_circle,color: Colors.black,), text: 'Account Settings'),
          customLeading(icon: Icon(Icons.star_purple500_outlined,color: Colors.black,), text: 'Rate Us'),
          ],
          ),
        ),
    );
  }
}