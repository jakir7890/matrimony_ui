
import 'package:flutter/material.dart';

class MembershipDetails extends StatefulWidget {
  const MembershipDetails({Key? key}) : super(key: key);

  @override
  State<MembershipDetails> createState() => _MembershipDetailsState();
}

class _MembershipDetailsState extends State<MembershipDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.only(left: 10,top: 20,right: 10),
        child: Container(
        height: 350,
        width: 300,
        decoration: BoxDecoration(         
          borderRadius: BorderRadius.circular(10),
          color: Colors.white70,
                    boxShadow: [
                 BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      0.0,
                      0.0,
                    ),
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                  ), 
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), 
                
                ], 
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.only(left: 10,right: 10),
              child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text('Gold'),
                  Text('BDT 2900')
                ],
              ),
            ),
            SizedBox(height: 30,),
             Padding(
               padding:  EdgeInsets.only(left: 10),
               child: Row(
                children: [
                  Icon(Icons.mail),
                  SizedBox(width: 10,),
                  Text('Send unlimited messages\nand chat online')
                ],
            ),
             ),
            SizedBox(height: 30,),
            Padding(
              padding:  EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.mobile_screen_share_rounded),
                  SizedBox(width: 10,),
                  Text('View 40 verified mobile\nnumbers')
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 2,
              width: 200,
              color: Colors.grey,
            ),
            SizedBox(height: 20,),
            Text('You have to pay   BDT 2900'),
            SizedBox(height: 20,),
            Container(
              height: 40,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))
                ),
                child: Text('Pay Now')
                ),
            )

          ],
        ),
    ),
      );
  }
}