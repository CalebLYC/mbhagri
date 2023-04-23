import 'package:flutter/material.dart';
import 'package:mbhagri/components/searchbar.dart';
import 'package:mbhagri/pages/home_page.dart';
import 'package:mbhagri/pages/map_page.dart';
import 'package:mbhagri/pages/notifications_page.dart';
import 'package:mbhagri/pages/profile_page.dart';
import 'package:mbhagri/pages/propose_product_page.dart';
import 'package:mbhagri/utils/colors.dart';
import 'package:mbhagri/utils/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MbhAgri',
      theme: ThemeData(
        primarySwatch: Primary,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  void setCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MbhAgri",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          SearchBar(),
        ],
      ),
      body: [
        const HomePage(),
        buildSecondPage(user),
        const MapPage(),
        const NotificationsPage(),
        const ProfilePage(),
      ][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) => setCurrentIndex(value),
        iconSize: 20,
        selectedItemColor: Colors.black45,
        unselectedItemColor: Colors.white,
        elevation: 2,
        backgroundColor: Primary,
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18.0,
        ),
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Acceuil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Faire une offre',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'carte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget buildSecondPage(user) {
  switch (user.role.toString().trim().toLowerCase()) {
    case "producteur":
      return const ProposeProductPage();
    default:
      return const ProposeProductPage();
  }
}
