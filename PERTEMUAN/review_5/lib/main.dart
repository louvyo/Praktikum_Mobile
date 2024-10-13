import 'package:flutter/material.dart';
import 'package:review_5/pages/homepage.dart';
import 'package:review_5/pages/profilepage.dart';
import 'package:review_5/pages/settingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navbar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        "/HomePage" : (context) => const MyHomePage(),
        "/ProfilePage" : (context) => const MyProfile(),
        "/SettingsPage" : (context) => const MySettingsPage(),
      },
    );
  }
}