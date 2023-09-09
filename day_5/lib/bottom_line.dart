import 'package:flutter/material.dart';

class BottomLine extends StatelessWidget{
  const BottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: (){},
        child: const Text('Order now'),
      ),
    );
  }
}