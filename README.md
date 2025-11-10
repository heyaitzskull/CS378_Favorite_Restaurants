# Prativa's Favorite Restaurants

This Flutter application displays information about the user’s favorite restaurants. The app consists of three main screens, each implemented in its own Dart file and class:

Restaurant List Screen – Displays a scrollable list of restaurants with summary information.
Restaurant Menu Screen – Displays the menu items for a selected restaurant.
Restaurant Contact Screen – Displays the restaurant’s address and phone number.

Users can interact with the list through short and long presses:
A short tap opens the menu screen.
A long press opens a popup menu with three options: show menu, open website, and contact information.

App Bar Specification
Global Style: Background color: Teal (Colors.teal), Title text color: White, Elevation: 4.0, Font weight: Medium or Bold
	Titles By Screen:
	Screen: Restaurant List, Menu Screen, Contact Screen
	AppBar: Favorite Restaurants, <Restaurant Name> Menu, <Restaurant Name> Contact

Restaurant List Screen
Class: RestaurantListScreen, File: lib/screens/restaurant_list_screen.dart
Layout and Behavior:
		Main widget: Scaffold
		Body: ListView.builder (scrollable)
		Each list item is a Card containing a ListTile.

	ListTile contents:
		Leading: Image.network(), Size: 70x70, Fit: BoxFit.cover, Rounded corners
	Title:
		Restaurant Name:
			TextStyle: fontWeight = FontWeight.bold, fontSize = 16
	Subtitle:
		Address:
			TextStyle: color = Colors.grey[700], fontSize = 14
	Padding: 
		EdgeInsets.all(10)

Card Properties:
	Margin: EdgeInsets.all(8), Elevation: 4, Rounded corners: BorderRadius.circular(10)

User Interactions 
	Short tap: navigate to Restaurant Menu Screen
	Long press: Display popup menu with options below:
Show Menu – same as short tap
Open Website – launches the restaurant website using url_launcher
Contact Info – navigates to Restaurant Contact Screen
Popup Menu
	Appears at the press location using RelativeRect.fromLTRB(position.dx, position.dy, 0, 0)
	Menu Items: Show menu, Open website, Contact Info
Website links open externally using LaunchMode.externalApplication.

Restaurant Menu Screen
	Class: RestaurantMenuScreen, File: RestaurantMenuScreen
Layout
Scaffold with AppBar titled “<Restaurant Name> Menu”
Body: ListView.builder displaying menu items in Cards
Each menu item Card includes:
margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10)
ListTile containing: title, font size
Padding around list: EdgeInsets.all(8)

Restaurant Contact Screen
	Class: RestaurantContactScreen, File: lib/screens/restaurant_contact_screen.dart
Layout:
Scaffold with AppBar titled “<Restaurant Name> Contact”
Body: Padding(EdgeInsets.all(20))
Column aligned to start (crossAxisAlignment: CrossAxisAlignment.start) displaying:
Section 1: Label: “Address:”, Value: Restaurant address
Section 2: Label: “Phone:” (bold), Value: Restaurant phone number
Spacing: SizedBox(height: 20) between sections

Data Model
	Class: Restaurant, File: lib/models/restaurant.dart

name(String): restaurant name, address(String): street address, phone(String): contact number, imagePath(String): URL of restaurant’s image, website(String): restaurant’s website URL, menuItems(List<String>): menu items

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
