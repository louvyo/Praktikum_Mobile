import 'package:flutter/material.dart';
import 'package:review_5/pages/homepage.dart';
import 'package:review_5/pages/profilepage.dart';
import 'package:review_5/pages/settingpage.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MyHomePage(),
            MyProfile(),
            MySettingsPage(),
          ],
        ),
      ),
    );
  }
}