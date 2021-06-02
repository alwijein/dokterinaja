import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/screens/home_screen/components/card_dokter.dart';

class DatabaseServices {
  static FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  static CollectionReference collectionReference =
      firebaseFirestore.collection('doctors');

  static Future<List<Doctor>> doctors() async {
    List<Doctor> doctors = [];
    QuerySnapshot maps = await collectionReference.get();

    for (var e in maps.docs) {
      doctors.add(
        Doctor(
          imgUrl: e.data()['imgUrl'],
          nama: e.data()['nama'],
          profesi: e.data()['profesi'],
          jadwalKerja: e.data()['jadwalKerja'],
          price: e.data()['price'],
          about: e.data()['about'],
          pengalaman: e.data()['pengalaman'],
        ),
      );
    }
    return doctors;
  }

  static Future<List<Doctor>> doctorsLimit() async {
    List<Doctor> doctorsLimit = [];
    QuerySnapshot mapsLimit = await collectionReference.limit(4).get();

    for (var e in mapsLimit.docs) {
      doctorsLimit.add(
        Doctor(
          imgUrl: e.data()['imgUrl'],
          nama: e.data()['nama'],
          profesi: e.data()['profesi'],
          jadwalKerja: e.data()['jadwalKerja'],
          price: e.data()['price'],
          about: e.data()['about'],
          pengalaman: e.data()['pengalaman'],
        ),
      );
    }
    return doctorsLimit;
  }
}
