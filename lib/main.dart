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
      body: Center(
        child: IconButton(
          onPressed: ()=>{},
          icon: Icon(
            Icons.car_crash
          ),
          //text: Text('Crashed')
          color: Colors.amber[600],
        )
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