import 'package:flutter/material.dart';
import 'package:matrimony_ui/Screen/component/custom_container.dart';
import 'package:matrimony_ui/const/appColor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text("No notification here.",
                      textAlign: TextAlign.center),
                  duration: Duration(seconds: 1),
                  backgroundColor: kSecondaryColor,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {
            final snackBar = SnackBar(
              content: Text("The helpline is temporarily closed :(",
                  textAlign: TextAlign.center),
              duration: Duration(seconds: 1),
              backgroundColor: kSecondaryColor,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, icon: Icon(Icons.headset_mic)),
        ],
        backgroundColor: kSecondaryColor,
        title: Text("Home"),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: kSecondaryColor,
          //  labelColor: kSecondaryColor,
           unselectedLabelColor: Colors.white,
           labelStyle: TextStyle(
             fontWeight: FontWeight.bold
           ),
          tabs: [
            Tab(
              icon: Icon(Icons.dashboard_outlined),
              text: "Dashboard",),
           Tab(
             icon: Icon(Icons.join_right_outlined),
             text: "Matched"),
           Tab(
             icon: Icon(Icons.favorite_outline),
             text: "Liked Profile"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
        
        Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
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
     Center(
       child: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: const[
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


         SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: const[
                   CistomContainer(),
                   SizedBox(height: 15,),
                   CistomContainer(),
                   
                   
                 ]),
           ),
         ),
      ]));
  }
}