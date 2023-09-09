import 'package:day_5/bottom_line.dart';
import 'package:day_5/coffee_view_model.dart';
import 'package:day_5/coffee_widget.dart';
import 'package:day_5/top_line.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make your order'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TopLine(),
          SizedBox(
            height: 150,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: coffee_list.length,
              itemBuilder: (context, index) =>
                  CoffeeWidget(coffee: coffee_list[index]),
            ),
          ),
          const BottomLine(),
        ],
      ),
    );
  }
}

const coffee_list = [
  Coffee(
    name: 'Caffe Americano',
    price: 3.95,
    image: 'https://png.monster/wp-content/uploads/2022/03/png.monster-9.png',
  ),
  Coffee(
    name: 'Cappuccino',
    price: 4.75,
    image:
        'https://www.pngall.com/wp-content/uploads/4/Starbucks-Coffee-PNG.png',
  ),
  Coffee(
    name: 'Espresso',
    price: 2.75,
    image:
        'https://i.pinimg.com/originals/b0/56/8b/b0568b8b587e270f89834eef1715683b.png',
  ),
  Coffee(
    name: 'Flat White',
    price: 4.75,
    image:
        'https://www.pngall.com/wp-content/uploads/4/Starbucks-Coffee-PNG-Free-Download.png',
  ),
  Coffee(
    name: 'Caffe Latte',
    price: 5.25,
    image:
        'https://www.pngall.com/wp-content/uploads/4/Starbucks-Cup-PNG-Free-Image.png',
  ),
  Coffee(
    name: 'Cinnamon Dolce',
    price: 4.75,
    image:
        'https://www.pngall.com/wp-content/uploads/4/Starbucks-Cup-PNG-Clipart.png',
  ),
  Coffee(
    name: 'Caramel Macchiato',
    price: 6.65,
    image:
        'https://www.pngall.com/wp-content/uploads/4/Starbucks-Cup-Transparent.png',
  ),
  Coffee(
    name: 'Espresso Macchiato',
    price: 2.85,
    image: 'https://www.pngall.com/wp-content/uploads/4/Starbucks-Cup-PNG.png',
  ),
  Coffee(
    name: 'Caffe Mocha',
    price: 5.25,
    image:
        'https://www.pngall.com/wp-content/uploads/4/Starbucks-Cup-PNG-Picture.png',
  ),
  Coffee(
    name: 'White Chocolate Mocha',
    price: 5.65,
    image: 'https://www.pngall.com/wp-content/uploads/4/Starbucks-Coffee.png',
  ),
];
