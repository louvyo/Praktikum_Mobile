import 'dart:io';

class Manga {
  String nama;
  String pengarang;

  Manga(this.nama, this.pengarang);

  void tampilkanInfo() {
    print('Nama Manga: $nama');
    print('Pengarang: $pengarang');
    print('--------------------------');
  }
}

class TokoManga {
  List<Manga>? mangaList;
  TokoManga() {
    mangaList = [];
  }

  void tambahManga(Manga manga) {
    mangaList?.add(manga);
    print('Manga "${manga.nama}" berhasil ditambahkan.');
  }

  void tampilkanManga() {
    if (mangaList?.isEmpty ?? true) {
      print('Manga tidak ditemukan.');
    } else {
      print('Daftar Manga :');
      mangaList?.forEach((manga) => manga.tampilkanInfo());
    }
  }

  Manga? cariManga(String nama) {
    // Kembalikan objek Manga atau null
    for (var manga in mangaList ?? []) {
      if (manga.nama.toLowerCase() == nama.toLowerCase()) {
        return manga;
      }
    }
    return null;
  }
}

class AplikasiTokoManga {
  TokoManga tokoManga = TokoManga();

  void mulai() {
    while (true) {
      print('\n=== Menu Manga ===');
      print('1. Tambah Manga');
      print('2. Tampilkan Semua Manga');
      print('3. Cari Manga');
      print('4. Keluar');
      stdout.write('Pilih menu: ');

      String? pilihan = stdin.readLineSync();
      switch (pilihan) {
        case '1':
          tambahManga();
          break;
        case '2':
          tokoManga.tampilkanManga();
          break;
        case '3':
          cariManga();
          break;
        case '4':
          print('Keluar dari aplikasi.');
          return;
        default:
          print('Pilihan salah, coba lagi.');
      }
    }
  }

  void tambahManga() {
    stdout.write('Masukkan nama manga: ');
    String? nama = stdin.readLineSync();
    stdout.write('Masukkan pengarang: ');
    String? pengarang = stdin.readLineSync();

    if (nama != null && pengarang != null) {
      Manga manga = Manga(nama, pengarang);
      tokoManga.tambahManga(manga);
    } else {
      print('Input tidak valid, coba lagi.');
    }
  }

  void cariManga() {
    stdout.write('Masukkan nama manga yang dicari: ');
    String? namaCari = stdin.readLineSync();
    Manga? ditemukan = tokoManga.cariManga(namaCari ?? '');

    if (ditemukan != null) {
      print('Manga ditemukan:');
      ditemukan.tampilkanInfo();
    } else {
      print('Manga tidak ditemukan.');
    }
  }
}

void main() {
  AplikasiTokoManga aplikasi = AplikasiTokoManga();
  aplikasi.mulai();
}
