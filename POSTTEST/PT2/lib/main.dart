import 'package:flutter/material.dart';

void main() {
  runApp(MangaReaderApp());
}

class MangaReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manga Reader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MangaListScreen(),
    );
  }
}

class MangaListScreen extends StatelessWidget {
  final List<String> mangaTitles = [
    'Manga 1',
    'Manga 2',
    'Manga 3',
    'Manga 4',
    'Manga 5',
    'Manga 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manga Reader'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Tambahkan aksi untuk ikon pengguna di sini
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 150, // Tinggi banner
              decoration: BoxDecoration(
                color: Colors.grey[400], // Warna latar belakang banner
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Manga Terbaru', // Teks untuk banner
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.0), // Jarak antara banner dan grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: mangaTitles.length,
                itemBuilder: (context, index) {
                  return MangaCard(
                    title: mangaTitles[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MangaCard extends StatelessWidget {
  final String title;

  const MangaCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[300], // Latar belakang abu-abu
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[400], // Warna latar belakang atas
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0), // Padding untuk teks
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
