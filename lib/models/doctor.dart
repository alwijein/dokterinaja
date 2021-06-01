import 'package:flutter/cupertino.dart';

class Doctor {
  final String nama, imgUrl, profesi, jadwalKerja, price, about;
  final int id;

// konstruktor for doctor list
  Doctor({
    @required this.id,
    @required this.nama,
    @required this.imgUrl,
    @required this.profesi,
    @required this.jadwalKerja,
    @required this.about,
    @required this.price,
  });

  // model doctor list
  static List<Doctor> doctorList = [
    Doctor(
      id: 1,
      nama: 'Dr. Hania',
      imgUrl: 'assets/images/1.jpg',
      profesi: 'Dokter Umum',
      jadwalKerja: '08:00 - 11:00',
      price: 'Rp. 25.000',
    ),
    Doctor(
      id: 2,
      nama: 'Dr. Supardi',
      imgUrl: 'assets/images/2.jpg',
      profesi: 'Dokter Mata',
      jadwalKerja: '08:00 - 11:00',
      price: 'Rp. 25.000',
    ),
    Doctor(
      id: 3,
      nama: 'Dr. Tirta',
      imgUrl: 'assets/images/3.jpg',
      profesi: 'Dokter Gigi',
      jadwalKerja: '08:00 - 11:00',
      price: 'Rp. 25.000',
    ),
    Doctor(
      id: 4,
      nama: 'Dr. Firdaus',
      imgUrl: 'assets/images/4.jpg',
      profesi: 'Dokter Gigi',
      jadwalKerja: '08:00 - 11:00',
      price: 'Rp. 25.000',
    ),
    Doctor(
      id: 5,
      nama: 'Dr. Fahri',
      imgUrl: 'assets/images/5.jpg',
      profesi: 'Dokter Gigi',
      jadwalKerja: '08:00 - 11:00',
      price: 'Rp. 25.000',
    ),
    Doctor(
      id: 6,
      nama: 'Dr. Fahri',
      imgUrl: 'assets/images/5.jpg',
      profesi: 'Dokter Gigi',
      jadwalKerja: '08:00 - 11:00',
      price: 'Rp. 25.000',
    ),
  ];
}
