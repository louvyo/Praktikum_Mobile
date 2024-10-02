import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: true,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // Untuk mengatur agar kolom berada di tengah
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Mengatur jarak antar item di dalam Row
              children: [
                Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.all(
                      10), // Menggunakan nilai tetap untuk margin
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            ),
          ],
        ),
      ),
    );
  }
}
