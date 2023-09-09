import 'package:flutter/material.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Well Done!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Your order was successfully placed'),
            const SizedBox(
              height: 50,
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).popUntil(
                ModalRoute.withName('/'),
              ),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}