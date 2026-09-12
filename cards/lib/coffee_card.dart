import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;
  CoffeeCard({required this.coffee});

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
          ],
        ),
      ),
    );
  }
}
