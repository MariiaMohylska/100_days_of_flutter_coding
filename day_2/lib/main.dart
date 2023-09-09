import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second day'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
      body: Column(
        children: [
          _title(),
          Expanded(child: _gridView()),
        ],
      ),
    );
  }

  Widget _gridView() {
    return GridView.count(
      childAspectRatio: 3/2,
      scrollDirection: Axis.horizontal,
      crossAxisCount: 2,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 75,
            height: 150,
            color: Colors.green,
            child: const Text('Alp'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 75,
            height: 25,
            color: Colors.green,
            child: const Text('Alp'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 75,
            height: 25,
            color: Colors.green,
            child: const Text('Alp'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 75,
            height: 25,
            color: Colors.green,
            child: const Text('Alp'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 75,
            height: 25,
            color: Colors.green,
            child: const Text('Alp'),
          ),
        ),
      ],
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 125,
              height: 175,
              color: Colors.blue,
              child: const Center(
                child: Text('poster'),
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Movie\'s name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Wrap(
                    children: [
                      Text(
                        'Long long long long long long long long long long long long'
                        ' long long long long long long long long long long long'
                        ' long long long long long long long long long long long'
                        ' long long long story',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
