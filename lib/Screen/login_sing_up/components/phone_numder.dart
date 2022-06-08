
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class  PhoneNumber extends StatelessWidget {
  const  PhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children:<Widget>[
            Container(
              decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(5)),
              child: CountryCodePicker(
                initialSelection: "BD",
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: size.width *0.6,
              decoration: BoxDecoration(
                  border: Border.all(),borderRadius: BorderRadius.circular(5)
              ),
              child: TextField(
                onChanged: (value)=>{},
                //maxLength:11,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  icon: Icon(Icons.call,
                    color: Color(0XFF046b4c),
                  ),
                  hintText: "Mobile Number",
                  border: InputBorder.none,
                ),
                cursorColor: Color(0XFF046b4c),
              ),
            )
          ],
        ),
      ),
    );
  }
}
