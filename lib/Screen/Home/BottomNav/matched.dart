import 'package:flutter/material.dart';
import 'package:matrimony_ui/const/appColor.dart';
import 'package:matrimony_ui/widget/membershipDetails.dart';

class MatchedProfile extends StatelessWidget {
  const MatchedProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        
        appBar: AppBar(
          title: Text('Membership'),
          centerTitle: true,
          backgroundColor: kSecondaryColor,
        ),
        body: Column(
          
          children: [SizedBox(height: 20,),
             TabBar(
                 indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green),
               unselectedLabelColor: Colors.black54,
             
             labelColor: Colors.white,
             
             indicatorColor: Colors.white,
               tabs: [
                 Tab(
                   text: "3 Months",),
               
                  Tab(
                   text: "6 Months"
              
                 ),
                  Tab(
                   text: "1 Year"
              
                 ),
                 
                 
               ],
               
               ),
            Container(
              height: 350,
              child:   TabBarView(children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MembershipDetails(),
                      MembershipDetails(),
                      MembershipDetails(),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MembershipDetails(),
                      MembershipDetails(),
                      MembershipDetails(),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MembershipDetails(),
                      MembershipDetails(),
                      MembershipDetails(),
                    ],
                  ),
                ),
                
              ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

