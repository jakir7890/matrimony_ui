

import 'package:flutter/material.dart';
import 'package:matrimony_ui/const/appColor.dart';

class CistomContainer extends StatelessWidget {
  const CistomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 180,
      width: size.width,
      decoration: BoxDecoration(color: kPrimaryColor, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 1)
      ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/img1.jpg'),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.,
                children: [
                  Text('BGD125485'),
                  Text(
                    "Rayhana Lima",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      "25 yrs. 4 ft 11 in / 149 cm. \nSunni.Unmarried. Bachelors. \nNot working,Narayanganj.\nDhaka, Bangladesh")
                ],
              )
            ],
          ),
          Divider(endIndent: 10, indent: 10, thickness: 1.5, height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                excludeFromSemantics: true,
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star_rounded, color: Colors.red),
                    Text(
                      'Shortlist',
                      style: TextStyle(color:  Colors.red),
                    )
                  ],
                ),
              ),
              GestureDetector(
                excludeFromSemantics: true,
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.chat, color: Colors.red,size: 20),
                    Text(
                      'Chat Now',
                      style: TextStyle(color: kTextLightColor),
                    )
                  ],
                ),
              ),
              GestureDetector(
                excludeFromSemantics: true,
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.subdirectory_arrow_right,
                      color: kIconColor,
                      size: 20,
                    ),
                    Text(
                      'Send Interest',
                      style: TextStyle(color: kTextLightColor),
                    )
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}