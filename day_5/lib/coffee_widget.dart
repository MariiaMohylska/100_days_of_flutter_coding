import 'package:day_5/coffee_view_model.dart';
import 'package:flutter/material.dart';

class CoffeeWidget extends StatelessWidget {
  final Coffee coffee;

  const CoffeeWidget({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      50,
                    ),
                  ),
                  child: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      color: Colors.green.shade800,
                      child: Image.network(coffee.image)),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    150,
                  ),
                ),
                child: Container(
                  color: Colors.amber.shade600,
                  height: 30,
                  width: 50,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '\$${coffee.price}',
                        style: TextStyle(fontSize: 12),
                      )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '${coffee.name}',
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}