import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;
  final VoidCallback delete;
  CoffeeCard({required this.coffee, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              coffee.name,
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            SizedBox(height: 6.0),
            Text(
              coffee.price.toString(),
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 8.0),
            IconButton(onPressed: delete, icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
