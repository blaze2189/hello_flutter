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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[          
          Text("hello World"),
          FloatingActionButton(
            onPressed: ()=>{},
            child: Text("button inside")),
          Container(
            color: Colors.amber[600],
            padding: EdgeInsets.all(30.0),
            child: Text("Hello container"),
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