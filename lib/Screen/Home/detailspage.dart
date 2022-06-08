import 'package:flutter/material.dart';
import 'package:matrimony_ui/widget/line.dart';
import 'package:matrimony_ui/widget/list1.dart';
import 'package:matrimony_ui/widget/list2.dart';


class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/img1.jpg'),fit: BoxFit.fill)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('BGD1615627'),
                  Text('Rezwana Ruponti'),
                  Text('24 yrs. 5 ft 3 in / 160 cm. Rangpur'),
                  Text('RBangladesh'),
                  Row(
                    children: [
                      Icon(Icons.chat),
                      Text('Chat Now')
                    ],
                  ),
      
                  Line(),
                  SizedBox(height: 20,),
                  List1(), 
                  SizedBox(height: 20,),
                  Line(),
                   SizedBox(height: 20,),
                  List2(),
                  SizedBox(height: 20,),
                  // Basic Part Start
                  Text('A few lines about myself',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('I love to travle. My favourite hobbiles are gardening, cooking and reading. I am an practicing muslim.'),
                  SizedBox(height: 20,),
                  Text('Her Basic Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name'),
                          Text('Age'),
                          Text('Profile Created For'),
                          Text('Gender'),
                          Text('Height'),
                          Text('Marital Status'),
                          Text('Mother Tongue'),
                          Text('Physical Statud'),
                          Text('Language Known'),
                          Text('Body Type'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Mahbububa Mim'),
                            Text(': 25 yrs'),
                            Text(': Self'),
                            Text(': Female'),
                            Text(': 5 ft/ 152 cm'),
                            Text(': Unmarried'),
                            Text(': Bengali'),
                            Text(': Normal'),
                            Text(': Request'),
                            Text(': Request'),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                   Text('What Does She Stay?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Country'),
                          Text('Citizenship'),
                          Text('State'),
                          Text('City'),
                          
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Bangladesh'),
                            Text(': Bangladesh'),
                            Text(': Dhaka'),
                            Text(': Dhaka [Dacca]'),
                            
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                    Text('What Does She Do?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Education'),
                          Text('Educational Details'),
                          Text('Employed in'),
                          Text('Occupation'),
                          
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Masters'),
                            Text(': Not Spacified'),
                            Text(': Not Working'),
                            Text(': Not Working'),
                            
                          ],
                        ),
                      )
                    ],
                  ),

                  //Religious status start

                    SizedBox(height: 10,),
                    Text('Her Religious Information',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Religion'),
                          Text('Sect'),
                         
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Islam'),
                            Text(': Sunni(Sect No Bar)'),
                         
                          ],
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                    Text('Hobbies & Interests',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hobbies'),
                          SizedBox(height: 15,),
                          Text('Interests'),
                         
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Request'),
                            SizedBox(height: 15,),
                            Text(': Request'),
                         
                          ],
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                    Text('Her Habits',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Eating Habits'),
                          Text('Drinking Habits'),
                          Text('Smoking Habits'),
                         
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Not Specified'),
                            Text(': Not Specified'),
                            Text(': Not Specified'),
                         
                          ],
                        ),
                      )
                    ],
                  ),

                  // Contact details

                   SizedBox(height: 10,),
                    Text('Contact Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Contact Number'),
                          Text('Chat Status'),
                          Text('Send Mail'),
                         
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': 01666666666'),
                            Text(': Online | Chat Now'),
                            Text(': Locked'),
                         
                          ],
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                    Text('Her Family Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Father Occupation'),
                          SizedBox(height: 30,),
                          Text('Mother Occupation'),
                          Text('Family Origin'),
                          Text('No. of Brothers'),
                          Text('Sister Married'),
                          Text('No. of Sister'),
                         
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Inspector of\n  police.  Dhaka\n  Metropolitan'),
                            Text(': Teachers'),
                            Text(': Not Specified'),
                            Text(': None'),
                            Text(': None'),
                            Text(': 2'),
                         
                          ],
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                    Text('About Her Family',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                   Text('Not Spedified'),

                   // Partner details start

                   SizedBox(height: 10,),
                    Text('Her Basic Perferences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Age'),
                          Text('Height'),
                          Text('Marital Status'),
                          Text('Physical Status'),
                          Text('Mother Tongue'),
                         
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': 25 - 32 yrs'),
                            Text(': 5 ft 7 in - 6 ft 3 in'),
                            Text(': Unmarried'),
                            Text(': Normal'),
                            Text(': Bengali'),
                          
                          ],
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                   Text('Her Religious Preferences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Religion'),
                          SizedBox(height: 15,),
                          Text('Sect'),
                         
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Islam'),
                            SizedBox(height: 15,),
                            Text(': Sunni'),
                         
                          ],
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                    Text('Her Professional Preferences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Education'),
                          SizedBox(height: 45,),
                          Text('Occupation'),
                          SizedBox(height: 45,),
                          Text('Annual Income'),
                         
                        ],
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(': ph.D. Professional\n  Certification. Civil\n  Service, Masters.\n  Bachelors'),
                          Text(': Officer, Army, Nevy,\n  Defence Services,\n   Air Force, Civil Engineer, '),
                          Text(': Any'),
                       
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                    Text('Her Location Preferences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Country'),
                          Text('Citizenship'),
                          Text('State'),
                          Text('Resident Status'),
                          
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Bangladesh'),
                            Text(': Any'),
                            Text(': Any'),
                            Text(': Any'),
                         
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                    Text('Her Habits Preferences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Eating Habits'),
                          Text('Drinking Habits'),
                          Text('Smoking Habits'),
                         
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': Does not matter'),
                            Text(': Non-drinker'),
                            Text(': Does not matter'),
                           
                          ],
                        ),
                      )
                    ],
                  ),




                   SizedBox(height: 50,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
