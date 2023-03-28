import 'package:flutter/material.dart';
import 'package:mobile_uninorte_project/screens/home_screen.dart';
import 'package:mobile_uninorte_project/screens/map_screen.dart';
import 'package:mobile_uninorte_project/screens/profile_screen.dart';
import 'package:mobile_uninorte_project/screens/track_history_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'profile': (context) => const ProfileScreen(),
        'track_history': (context) => const TrackHistoryScreen(),
        'map': (context) => const MapScreen(),
      },
    );
  }
}
