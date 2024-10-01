import 'package:flutter/material.dart';
import 'package:seminario_1/alert_page.dart';
import 'package:seminario_1/avatar_page.dart';
import 'package:seminario_1/home_page.dart';
import 'package:seminario_1/card_page.dart';
import 'package:seminario_1/animated_container.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/':(BuildContext context) => HomePage(),
    'alert':(BuildContext context) => AlertPage(),
    'avatar':(BuildContext context) => AvatarPage(),
    'card':(BuildContext context) => CardPage(),
    'animatedContainer':(BuildContext context) => AnimatedContainerPage(),
  };
}