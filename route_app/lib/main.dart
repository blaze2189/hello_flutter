//import 'package:material_ui/material_ui.dart';
import 'package:flutter/material.dart';
import 'package:route_app/pages/choose_location.dart';
import 'package:route_app/pages/home.dart';
import 'package:route_app/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home':(context)=> Home(),
        '/location':(context) => ChooseLocation()
        }
    )
  );
}
