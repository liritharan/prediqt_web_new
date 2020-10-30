import 'package:flutter/material.dart';

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'My Badges', icon: Icons.directions_boat),
  const Choice(title: 'Settings', icon: Icons.directions_bus),
  const Choice(title: 'Rate this App', icon: Icons.directions_railway),
  const Choice(title: 'Terms of services', icon: Icons.directions_walk),
  const Choice(title: 'Privacy Policy', icon: Icons.directions_railway),
  const Choice(title: 'Logout', icon: Icons.directions_walk),
];

const Color primaryColor = Color(0xFFD20910);
const Color primaryColorLight = Color(0xFFED1B2E);
const Color drawerColoPrimary = Color(0xFF88070B);
const Color drawerColoSecondary = Color(0xFFCF0A11);

final String path = 'assets/nicasiaassets/';

final List<Draw> drawerItems = [
  Draw(title: 'Quick Payment', icon: Icons.photo_camera),
  Draw(title: 'Favorite Account', icon: Icons.supervised_user_circle),
  Draw(title: 'Invoice History', icon: Icons.receipt),
  Draw(title: 'Complain', icon: Icons.speaker_notes),
  Draw(title: 'Activity Log', icon: Icons.assessment),
  Draw(title: 'Settings', icon: Icons.settings),
];

class Draw {
  final String title;
  final IconData icon;
  Draw({this.title, this.icon});
}
