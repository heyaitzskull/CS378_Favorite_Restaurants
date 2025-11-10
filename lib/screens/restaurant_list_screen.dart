import 'package:flutter/material.dart';
import '../data/restaurant_data.dart';
import '../screens/restaurant_menu_screen.dart';
import '../screens/restaurant_contact_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantListScreen extends StatelessWidget {
  const RestaurantListScreen({super.key});

  void _showPopupMenu(BuildContext context, Offset position, restaurant) async {
    final selected = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(position.dx, position.dy, 0, 0),
      items: [
        const PopupMenuItem(value: 'menu', child: Text('Show Menu')),
        const PopupMenuItem(value: 'website', child: Text('Open Website')),
        const PopupMenuItem(value: 'contact', child: Text('Contact Info')),
      ],
    );

    if (selected == 'menu') {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => RestaurantMenuScreen(restaurant: restaurant)));
    } else if (selected == 'website') {
      launchUrl(Uri.parse(restaurant.website));
    } else if (selected == 'contact') {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => RestaurantContactScreen(restaurant: restaurant)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Prativa's Favorite Restaurants!!"),
        backgroundColor: Colors.indigo[100],
        shadowColor: Colors.indigo[400],
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => RestaurantMenuScreen(restaurant: restaurant),
              ),
            ),
            onLongPressStart: (details) {
              _showPopupMenu(context, details.globalPosition, restaurant);
            },
            child: Card(
              margin: const EdgeInsets.all(8),
              elevation: 4,
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Image.network(restaurant.imagePath, width: 70, height: 70, fit: BoxFit.cover),
                title: Text(restaurant.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(restaurant.address, style: const TextStyle(color: Colors.grey)),
              ),
            ),
          );
        },
      ),
    );
  }
}
