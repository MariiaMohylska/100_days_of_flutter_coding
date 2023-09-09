import 'package:flutter/material.dart';

class TopLine extends StatelessWidget {
  const TopLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Select your favs'),
          OutlinedButton(onPressed: () {}, child: const Text('More ->'),),
        ],
      ),
    );
  }
}