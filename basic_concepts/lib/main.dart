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
        children: <Widget>[
          Expanded(
            flex: 5,           
            child: Image.asset('assets/215167.jpg')
            ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text("1")
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.orange,
              child: Text("text2")
            )
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text("3")
            )
          ),
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