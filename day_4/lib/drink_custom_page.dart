import 'package:day_4/customize_option_widgets.dart';
import 'package:flutter/material.dart';

class DrinkCustomPage extends StatefulWidget {
  const DrinkCustomPage({super.key});

  @override
  State<DrinkCustomPage> createState() => _DrinkCustomPageState();
}

class _DrinkCustomPageState extends State<DrinkCustomPage> {
  @override
  Widget build(BuildContext context) {
    final drinkName = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Customize your order'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(drinkName),
          const SizedBox(
            height: 75,
          ),
          const SugarCounterWidget(),
          const EspressoCounterWidget(),
          const SizedBox(
            height: 75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
              FilledButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed('/submitted-order'),
                child: const Text('Submit'),
              ),
            ],
          )
        ],
      ),
    );
  }
}