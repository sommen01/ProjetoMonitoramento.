
import 'package:flutter/material.dart';
import 'package:projetoeder/src/pages/homepage.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0; 
  final List<Widget> screens = [
  
  ]; 
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         extendBody: true,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Color(0xff00acba), size: 50,),
        backgroundColor: Colors.white,
        onPressed: () {
           setState(() {
                       currentScreen =   
                       Container();
                       currentTab = 3;
                     });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.only(left: 50.0),
               child: Container(
                 child: MaterialButton(
                   minWidth: 40,
                   onPressed: () {
                     setState(() {
                       currentScreen =
                           HomePage(); // if user taps on this dashboard tab will be active
                       currentTab = 0;
                     });
                   },
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Icon(
                         Icons.home,
                          size: currentTab== 0 ? 50 : 30,
                         color: Color(0xff00acba),
                       ),
                      
                     ],
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 90.0),
               child: Container(
                 child: MaterialButton(
                   minWidth: 40,
                   onPressed: () {
                     setState(() {
                       currentScreen =
                           HomePage(); // if user taps on this dashboard tab will be active
                       currentTab = 1;
                     });
                   },
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Icon(
                         Icons.home,
                          size: currentTab== 1 ? 50 : 30,
                         color: Color(0xff00acba),
                       ),
                      
                     ],
                   ),
                 ),
               ),
             ),


             // Right Tab bar icons
             Padding(
               padding: const EdgeInsets.only(right :50.0),
               child: Container(
                 child: MaterialButton(
                   minWidth: 40,
                   onPressed: () {
                     setState(() {
                       currentScreen =   
                       Container(color: Colors.grey,);
                       currentTab = 2;
                     });
                   },
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Icon(
                         Icons.person,
                         size: currentTab== 2 ? 50 : 30,
                         color:  Color(0xff00acba),
                       ),
                     ],
                   ),
                 ),
               ),
             )

           ],
            ),
        ),
      ),
    );
  }
}