import 'package:flutter/material.dart';
class Select_Mother_Tongue extends StatefulWidget {
  const Select_Mother_Tongue({Key? key}) : super(key: key);

  @override
  State<Select_Mother_Tongue> createState() => _Select_Mother_TongueState();
}

class _Select_Mother_TongueState extends State<Select_Mother_Tongue> {
  List<String> items = ['Bengali', 'Hindi', 'Urdu', 'English','Arabic'];
  String? selectedItem = 'Bengali';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width ,
      decoration: BoxDecoration(
          border: Border.all(),borderRadius: BorderRadius.circular(5)
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
            border: InputBorder.none
          //disabledBorder: InputBorder.none,
        ),
        value: selectedItem,
        items: items.map((item) => DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: TextStyle(fontSize: 18),)
        )).toList(),
        onChanged: (item)=> setState(()=>selectedItem = item),
        icon: Icon(Icons.expand_more,color: Colors.red,size: 25),

      ),

    );
  }
}
