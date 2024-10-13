import 'package:flutter/material.dart';
import 'package:pertemuan_4/pages/profile_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(  // Added `child`
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MyProfilePage();
                    },
                  ),
                );
              },
              child: const Text(
                "Pindah Screen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/SettingPage");
              },
              child: const Text(
                "Pindah ke Setting Page",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
