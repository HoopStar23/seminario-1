import 'package:flutter/material.dart';
import 'package:seminario_1/home_page.dart';
//import 'package:seminario_1/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}