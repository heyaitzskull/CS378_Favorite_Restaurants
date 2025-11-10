import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantMenuScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantMenuScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${restaurant.name} Menu')),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: restaurant.menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ListTile(
              title: Text(restaurant.menuItems[index]),
            ),
          );
        },
      ),
    );
  }
}
