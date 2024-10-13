import 'package:flutter/material.dart';
import 'package:review_5/pages/profilepage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              accountName: Text("Praktikum Mobile"),
              accountEmail: Text('mobile@gmail.com'),
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, "/SettingsPage");
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const MyProfile();
                  }),
                );
              },
              child: const Text(
                "Pindah Screen",
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ProfilePage");
              },
              child: const Text(
                "Pindah ke Profile Page",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
