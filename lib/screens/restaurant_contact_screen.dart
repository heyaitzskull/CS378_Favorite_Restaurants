import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantContactScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantContactScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${restaurant.name} Contact')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Address:', style: Theme.of(context).textTheme.titleMedium),
            Text(restaurant.address),
            const SizedBox(height: 20),
            Text('Phone:', style: Theme.of(context).textTheme.titleMedium),
            Text(restaurant.phone),
          ],
        ),
      ),
    );
  }
}
