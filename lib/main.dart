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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text("one")
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.yellow[700],
            child: Text("two")
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.red[600],
            child: Text("three")
          )
        ],
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