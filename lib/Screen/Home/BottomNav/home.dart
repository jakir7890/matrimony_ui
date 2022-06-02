import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/component/custom_container.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CistomContainer(),
                    SizedBox(height: 15,),
                    CistomContainer(),
                    SizedBox(height: 15,),
                    CistomContainer(),
                    SizedBox(height: 15,),
                    CistomContainer(),
                    SizedBox(height: 15,),
                    CistomContainer(),
                    SizedBox(height: 15,),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}