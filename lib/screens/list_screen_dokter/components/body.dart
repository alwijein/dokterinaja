import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/components/card_list_dokter.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              // horizontal: getPropertionateScreenWidht(20),
              // vertical: getPropertionateScreenHeight(10),
              ),
          child: Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("dokterinaja_db")
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListDokterCloud(snapshot.data.documents);
              },
            ),
          ),
        ),
      ),
    );
  }

  ListView buildCardListDokter() {
    return ListView.builder(
      itemCount: Doctor.doctorList.length,
      itemBuilder: (context, index) {
        return CardListDokter(
          img: Doctor.doctorList[index].imgUrl,
          nama: Doctor.doctorList[index].nama,
          profesi: Doctor.doctorList[index].profesi,
          price: Doctor.doctorList[index].price,
        );
      },
    );
  }
}

class ListDokterCloud extends StatelessWidget {
  final List<DocumentSnapshot> listDokterCloud;

  const ListDokterCloud(documents, {Key key, this.listDokterCloud})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listDokterCloud == null ? 0 : listDokterCloud.length,
      itemBuilder: (context, index) {
        String nama = listDokterCloud[index].data()['nama'];
        print(nama);
        return Text(nama);
      },
    );
  }
}
