import 'package:flutter/material.dart';
import 'package:seminario_1/alert_page.dart';
import 'package:seminario_1/src/routes/routes.dart';
//import 'package:seminario_1/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Route llamada ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage());
      },
    );
  }
}