
import 'package:flutter/material.dart';

class SugarCounterWidget extends StatefulWidget {
  const SugarCounterWidget({super.key});

  @override
  State<SugarCounterWidget> createState() => _SugarCounterWidget();
}

class _SugarCounterWidget extends State<SugarCounterWidget> {
  int sugarCount = 2;

  void incrementAmount() => sugarCount < 10
      ? setState(() {
    sugarCount++;
  })
      : null;

  void decreaseAmount() => sugarCount > 0
      ? setState(() {
    sugarCount--;
  })
      : null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Sugar'),
        const SizedBox(
          width: 135,
        ),
        OutlinedButton(onPressed: decreaseAmount, child: const Text('-')),
        Text('$sugarCount'),
        OutlinedButton(onPressed: incrementAmount, child: const Text('+')),
      ],
    );
  }
}

class EspressoCounterWidget extends StatefulWidget {
  const EspressoCounterWidget({super.key});

  @override
  State<EspressoCounterWidget> createState() => _EspressoCounterWidget();
}

class _EspressoCounterWidget extends State<EspressoCounterWidget> {
  int espressoCount = 1;

  void incrementAmount() => espressoCount < 10
      ? setState(() {
    espressoCount++;
  })
      : null;

  void decreaseAmount() => espressoCount > 0
      ? setState(() {
    espressoCount--;
  })
      : null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Espresso shots'),
        const SizedBox(
          width: 75,
        ),
        OutlinedButton(onPressed: decreaseAmount, child: const Text('-')),
        Text('$espressoCount'),
        OutlinedButton(onPressed: incrementAmount, child: const Text('+')),
      ],
    );
  }
}