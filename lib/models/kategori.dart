import 'package:flutter/cupertino.dart';

class Kategori {
  final String imgUrl, judulKategori;

  Kategori({
    @required this.imgUrl,
    @required this.judulKategori,
  });

  static List<Kategori> kategori = [
    Kategori(
      imgUrl: 'assets/icons/dental_surgeon.png',
      judulKategori: 'Dokter Gigi',
    ),
    Kategori(
      imgUrl: 'assets/icons/dental_surgeon.png',
      judulKategori: 'Dokter Mata',
    ),
    Kategori(
      imgUrl: 'assets/icons/dental_surgeon.png',
      judulKategori: 'Dokter Jantung',
    ),
    Kategori(
      imgUrl: 'assets/icons/dental_surgeon.png',
      judulKategori: 'Dokter Hati',
    ),
    Kategori(
      imgUrl: 'assets/icons/dental_surgeon.png',
      judulKategori: 'Dokter Umum',
    ),
    Kategori(
      imgUrl: 'assets/icons/dental_surgeon.png',
      judulKategori: 'Dokter Anak',
    ),
  ];
}
