import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar(
      {super.key, required this.currentIndex, required this.setcurrentIndex});
  int currentIndex;
  final Function setcurrentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (value) => setcurrentIndex(value),
      iconSize: 20,
      selectedItemColor: Colors.black45,
      unselectedItemColor: Colors.white,
      elevation: 2,
      backgroundColor: Colors.green,
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14.0,
      ),
      selectedLabelStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Acceuil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favoris',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'carte',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
