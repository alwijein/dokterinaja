import 'package:flutter/cupertino.dart';

class Doctor {
  final String nama,
      imgUrl,
      profesi,
      jadwalKerja,
      price,
      about,
      pengalaman,
      nomor;
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
    @required this.pengalaman,
    @required this.nomor,
  });
}
