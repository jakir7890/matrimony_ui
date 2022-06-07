

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matrimony_ui/Screen/Home/detailspage.dart';
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
          GestureDetector(
            onTap: () => Get.to(DetailsPage()),
            child: Row(
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
                    Icon(Icons.favorite, color: Colors.red),
                    SizedBox(width: 4.0,),
                    Text(
                      'Like',
                      style: TextStyle(color:  kTextColor,
                      fontWeight: FontWeight.bold),
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
                    SizedBox(width: 4.0,),
                    Text(
                      'Chat Now',
                      style: TextStyle(color: kTextLightColor,
                      fontWeight: FontWeight.bold),
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
                      Icons.send,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 4.0,),
                    Text(
                      'Send Interest',
                      style: TextStyle(color: kTextLightColor,
                      fontWeight: FontWeight.bold),
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
