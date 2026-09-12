import 'package:flutter/material.dart';
import 'coffee_card.dart';
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
    Coffee(name: "latte", price: 20.05),
  ];

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
            .map(
              (coffee) => CoffeeCard(
                coffee: coffee,
                delete: () {
                  setState(() {
                    coffees.remove(coffee);
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
