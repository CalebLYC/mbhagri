import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mbhagri/components/layout/appbar_actions_widgets.dart';
import 'package:mbhagri/components/layout/bottom_bar.dart';
import 'package:mbhagri/components/layout/floating_button.dart';
import 'package:mbhagri/pages/favorites_page.dart';
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
        primaryColor: Primary,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
          primaryColorDark: Primary,
          accentColor: Secondary,
        ),
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

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Vérifie si le service de localisation est activé
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Si le service n'est pas activé, affiche une boîte de dialogue demandant à l'utilisateur de l'activer
      return Future.error('Le service de localisation est désactivé');
    }

    // Demande l'autorisation d'accéder à la position actuelle de l'utilisateur
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Si l'autorisation n'est pas accordée, affiche une boîte de dialogue pour demander la permission
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Si la permission est toujours refusée, affiche une boîte de dialogue pour expliquer à l'utilisateur pourquoi la permission est nécessaire
        return Future.error('L\'autorisation de localisation a été refusée');
      }
    }

    // Obtenir la position actuelle de l'utilisateur
    Position position = await Geolocator.getCurrentPosition();

    localisation.latitude = position.latitude;
    localisation.longitude = position.longitude;

    // Utiliser la position actuelle
    print('Latitude: ${position.latitude}, Longitude: ${position.longitude}');
  }

  DateTime?
      _lastPressedAt; // la variable pour stocker la dernière fois que l'utilisateur a appuyé sur le bouton retour
  Future<bool> _onBackPressed() async {
    // La fonction appelée lorsqu'un utilisateur appuie sur le bouton retour
    if (_lastPressedAt == null ||
        DateTime.now().difference(_lastPressedAt!) >
            const Duration(seconds: 2)) {
      _lastPressedAt = DateTime.now();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          elevation: 2,
          padding: EdgeInsets.all(5),
          duration: Duration(seconds: 2),
          content: Text(
            'Appuyez à nouveau pour quitter',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
            ),
          ),
        ),
      );
      return false;
    }
    return true;
  }

  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
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
          SearchIcon(),
          FilterIcon(),
        ],
      ),
      body: WillPopScope(
          onWillPop: _onBackPressed,
          child: [
            const HomePage(),
            const FavoritesPage(),
            const NotificationsPage(),
            const MapPage(),
            const ProfilePage(),
          ][_currentIndex]),
      bottomNavigationBar: BottomBar(
          currentIndex: _currentIndex, setcurrentIndex: setCurrentIndex),
      floatingActionButton: const FloatingButton(),
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
