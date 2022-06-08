
import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  const List2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  
          children: <Widget>[  
            Column(
              children: [
    Icon(  
      Icons.person,  
      size: 30,  
      color:Colors.red  
    ),
    SizedBox(height: 5,),
    Text('Basics')
              ],
            ),  
            Column(
              children: [
    Icon(  
      Icons.card_giftcard, 
      size: 30,  
      color:Colors.red  
    ),
    SizedBox(height: 5,),
    Text('Religious')
              ],
            ),  
            Column(
              children: [
    Icon(  
      Icons.call,  
      size: 30,  
      color:Colors.red  
    ),
    SizedBox(height: 5,),
    Text('Contract')
              ],
            ), 
            Column(
              children: [
    Icon(  
      Icons.person_add_alt_sharp,  
      size: 30,  
      color:Colors.red  
    ),
    SizedBox(height: 5,),
    Text('Family')
              ],
            ), 
            Column(
              children: [
    Icon(  
      Icons.person_sharp,  
      size: 30,  
      color:Colors.red  
    ),
    SizedBox(height: 5,),
    Text('Partner')
              ],
            ), 

      ]
      );
  }
}
