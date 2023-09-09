import 'package:day_4/drink_custom_page.dart';
import 'package:day_4/home_page.dart';
import 'package:day_4/submit_page.dart';
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
        primarySwatch: Colors.brown,
      ),
      title: 'Navigation sample',
      home: HomePage(),
      routes: {
        '/drink-customization': (_) => const DrinkCustomPage(),
        '/submitted-order': (_) => const SubmitPage(),
      },
    );
  }
}