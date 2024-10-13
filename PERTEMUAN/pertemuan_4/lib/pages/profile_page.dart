import 'package:flutter/material.dart';
import 'package:pertemuan_4/pages/setting_pages.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text("Halaman Profile"),
      ),
      body: Center(
        child: Column(  // Updated this line
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MySettingPage();
                    },
                  ),
                );
              },
              child: const Text("Go to Settings"),  // Added a child with text
            ),
          ],
        ),
      ),
    );
  }
}
