import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTesField extends StatefulWidget {
  final String hintText;
  final String labelText;

  const MyTesField({super.key, required this.hintText, required this.labelText});

  @override
  State<MyTesField> createState() => _MyTesFieldState();
}

class _MyTesFieldState extends State<MyTesField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFFD18E), // Mengatur warna latar belakang
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
