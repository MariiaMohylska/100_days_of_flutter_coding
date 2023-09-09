import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final drinksList = [
    'Caffe Americano',
    'Cappuccino',
    'Espresso',
    'Flat White',
    'Honey Almondmilk Flat White',
    'Caffe Latte',
    'Cinnamon Dolce',
    'Caramel Macchiato',
    'Espresso Macchiato',
    'Caffe Mocha',
    'White Chocolate Mocha',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: GridView.builder(
          itemCount: drinksList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(
                  '/drink-customization',
                  arguments: drinksList[index]),
              child: GridTile(
                child: Container(
                    alignment: Alignment.center,
                    color: Colors.brown.shade200,
                    margin: const EdgeInsets.all(5),
                    child: Text(drinksList[index])),
              ),
            );
          }),
    );
  }
}