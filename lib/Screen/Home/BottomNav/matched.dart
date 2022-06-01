import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/component/custom_container.dart';
import 'package:matrimony_ui/const/appColor.dart';

class Matches extends StatelessWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightOrng,
      appBar: AppBar(
        title: const Text('Matched'),
        backgroundColor: AppColors.lightOrng,
        
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.headset_mic)),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: const [
              SizedBox(height: 10,),
              CistomContainer(),
              SizedBox(height: 20,),
              CistomContainer(),
              SizedBox(height: 20,),
              CistomContainer(),
            ],
          ),
        ),
      ),
    );
  }
}