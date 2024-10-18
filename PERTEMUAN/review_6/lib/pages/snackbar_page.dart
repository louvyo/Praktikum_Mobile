import 'package:flutter/material.dart';

class SnackbarPage extends StatefulWidget {
  const SnackbarPage({super.key});

  @override
  State<SnackbarPage> createState() => _SnackbarPageState();
}

class _SnackbarPageState extends State<SnackbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ladang Judi 88"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final mySnackBar = SnackBar(
              content: const Text("Berhasil membuat SnackBar"),
              duration: const Duration(seconds: 3),
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.amberAccent,
            );
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          },
          child: const Text("Tampilkan SnackBar"),
        ),
      ),
    );
  }
}
