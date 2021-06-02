import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/components/card_list_dokter.dart';
import 'package:dokterin_aja/services/database_services.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: FutureBuilder<List<Doctor>>(
            future: DatabaseServices.doctors(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                return EasyRefresh(
                  onRefresh: () async {
                    setState(() {});
                  },
                  child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (_, index) {
                        Doctor doctor = snapshot.data[index];
                        return CardListDokter(
                          img: doctor.imgUrl,
                          nama: doctor.nama,
                          profesi: doctor.profesi,
                          price: doctor.price,
                        );
                      }),
                );
              } else {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Loading',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
