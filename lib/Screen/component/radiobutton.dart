import 'package:flutter/material.dart';
  class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}
class RadioGroupWidget extends State {
  
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';
 
  // Group Value for Radio Button.
  int id = 1;
 
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
        padding: EdgeInsets.all(10.0),
        
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Male';
                  id = 1;
                });
              },
            ),
            const Text(
              'Male',
              style:  TextStyle(fontSize: 17.0),
            ),
 
            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Female';
                  id = 2;
                });
              },
            ),
            const Text(
              'Female',
              style:  TextStyle(
                fontSize: 17.0,
              ),
            ),
            
            Radio(
              value: 3,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Other';
                  id = 3;
                });
              },
            ),
            const Text(
              'Other',
              style:  TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ],
    );
  }
}

