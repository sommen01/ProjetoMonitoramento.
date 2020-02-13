import 'package:flutter/material.dart';
import 'package:projetoeder/src/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de coleta de dados',
      theme: ThemeData(
        
          ),
      home: HomeScreen()
    );
  }
}
