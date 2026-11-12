import 'package:flutter/material.dart';
import 'package:route_app/pages/choose_location.dart';
import 'package:route_app/pages/home.dart';
import 'package:route_app/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      routes: {
        '/': (context) => Loading(),
        '/home':(context)=> Home(),
        '/location':(context) => ChooseLocation()
        }
    )
  );
}
