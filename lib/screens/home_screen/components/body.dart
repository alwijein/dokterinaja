import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/screens/home_screen/components/banner_card.dart';
import 'package:dokterin_aja/screens/home_screen/components/card_dokter.dart';
import 'package:dokterin_aja/screens/components/card_kategori.dart';
import 'package:dokterin_aja/screens/home_screen/components/headling_text.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/list_screen_dokter.dart';
import 'package:dokterin_aja/screens/list_screen_kategori/list_screen_kategori.dart';
import 'package:dokterin_aja/services/database_services.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getPropertionateScreenWidht(20),
            vertical: getPropertionateScreenHeight(20),
          ),
          child: SingleChildScrollView(
            child: Container(
              width: SizeConfig.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BannerCard(
                    image: 'assets/images/banner-photo.png',
                    text: "Ingat Untuk Selalu Mengenakan Masker",
                  ),
                  SizedBox(
                    height: getPropertionateScreenHeight(30),
                  ),
                  HeadlingText(
                    text: "Kategori",
                    press: () {
                      press() {
                        Navigator.pushNamed(
                            context, ListScreenKategori.routeNamed);
                      }
                    },
                  ),
                  SizedBox(
                    height: getPropertionateScreenHeight(10),
                  ),
                  buildKategoriList(),
                  SizedBox(
                    height: getPropertionateScreenHeight(30),
                  ),
                  HeadlingText(
                    text: "Daftar Dokter",
                    press: () {
                      Navigator.pushNamed(context, ListScreenDokter.routeName);
                    },
                  ),
                  SizedBox(
                    height: getPropertionateScreenHeight(10),
                  ),
                  Container(child: buildDokterList()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  FutureBuilder buildDokterList() {
    return FutureBuilder<QuerySnapshot>(
      future: DatabaseServices.doctors.get(),
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: snapshot.data.docs
                .map(
                  (e) => CardDokter(
                    img: e.data()['imgUrl'],
                    titleText: e.data()['nama'],
                    subtitleText: e.data()['profesi'],
                  ),
                )
                .toList(),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  SingleChildScrollView buildKategoriList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardKategori(
            image: 'assets/icons/dental_surgeon.png',
            text: "Spesialis\nGigi",
            press: () {},
          ),
          CardKategori(
            image: 'assets/icons/eye_specialist.png',
            text: "Spesialis\nMata",
            press: () {},
          ),
          CardKategori(
            image: 'assets/icons/heart_surgeon.png',
            text: "Spesialis\nJantung",
            press: () {},
          ),
          CardKategori(
            image: 'assets/icons/dental_surgeon.png',
            text: "Spesialis\nGigi",
            press: () {},
          ),
        ],
      ),
    );
  }
}
