import 'package:flutter/material.dart';
import 'selection_page.dart';
import 'package:flutter_app_tmdb/Explore.dart';
import 'login.dart';

import 'register.dart';


void main() {
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex=1;
  List<Widget> tabPages = [
    Explore(),
    Login(),
    HomeScreen1(),
    Register(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(


      body:tabPages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       currentIndex: _currentIndex,
       backgroundColor: Colors.grey[100],
       selectedItemColor: Colors.red,
       unselectedItemColor: Colors.grey.withOpacity(.60),

       onTap: (value) {
        // Respond to item press.
         setState(() => _currentIndex = value);
       },
      items: [
        BottomNavigationBarItem(
          title: Text('Explore',style: TextStyle(color: Colors.black),),
          icon: Icon(Icons.explore),
        ),
        BottomNavigationBarItem(
          title: Text("Login",style: TextStyle(color: Colors.black),),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text('Test',style: TextStyle(color: Colors.black),),
          icon: Icon(Icons.speaker_notes),
        ),

      ],
    ),
    );


  }
}
