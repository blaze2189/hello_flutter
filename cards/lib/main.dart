import 'package:flutter/material.dart';
import 'coffee.dart';

void main() {
  runApp(MaterialApp(home: CoffeeList()));
}

class CoffeeList extends StatefulWidget {
  @override
  _CoffeeListState createState() => _CoffeeListState();
}

class _CoffeeListState extends State<CoffeeList> {
  List<Coffee> coffees = [
    Coffee(name: "mexicano", price: 10.00),
    Coffee(name: "latte", price: 20.04),
  ];

  Widget coffeTemplate(coffe) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              coffe.name,
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            SizedBox(height: 6.0),
            Text(
              coffe.price.toString(),
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: coffees
            .map((coffee) => coffeTemplate(coffee))
            .toList(),
      ),
    );
  }
}
