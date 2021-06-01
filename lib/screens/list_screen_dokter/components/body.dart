import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/components/card_list_dokter.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    CollectionReference doctors = firebaseFirestore.collection('doctors');
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: FutureBuilder<QuerySnapshot>(
            future: doctors.get(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                return Column(
                    children: snapshot.data.docs
                        .map(
                          (e) => CardListDokter(
                            img: e.data()['imgUrl'],
                            nama: e.data()['nama'],
                            profesi: e.data()['profesi'],
                            price: e.data()['price'],
                          ),
                        )
                        .toList());
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
