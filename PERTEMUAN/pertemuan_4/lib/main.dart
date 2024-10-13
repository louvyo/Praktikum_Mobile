import 'package:flutter/material.dart';
import 'package:pertemuan_4/pages/homepage.dart';
import 'package:pertemuan_4/pages/profile_page.dart';
import 'package:pertemuan_4/pages/setting_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        "/HomePage" : (context) => const MyHomePage(),
        "/ProfilePage" : (context) => const MyProfilePage(),
        "/SettingPage" : (context) => const MySettingPage(),
      },
    );
  }
}
