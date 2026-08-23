import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
    )
  );
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('My First App'),
        centerTitle: true
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0,20.0,30.0,40.0),
        margin: EdgeInsets.fromLTRB(10.0,20.0,30.0,40.0),
        color: Colors.grey[400],
        child: Text("hello world!!"),
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: ()=>(), 
        backgroundColor: Colors.green[350],
        hoverColor: Colors.pink[800],
        child: Text('click'),
      ),
    );
  }
}