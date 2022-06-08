

import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  const List1({
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
      Icons.star,  
      size: 30,  
      color:Colors.red  
    ),
    SizedBox(height: 5,),
    Text('Shortlist')
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
    Text('Call')
              ],
            ),  
            Column(
              children: [
    Icon(  
      Icons.more_horiz,  
      size: 30,  
      color:Colors.red  
    ),
    SizedBox(height: 5,),
    Text('More')
              ],
            ),  
      ]
      );
  }
}
