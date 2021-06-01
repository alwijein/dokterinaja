import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/screens/home_screen/components/banner_card.dart';
import 'package:dokterin_aja/screens/home_screen/components/card_dokter.dart';
import 'package:dokterin_aja/screens/home_screen/components/card_kategori.dart';
import 'package:dokterin_aja/screens/home_screen/components/headling_text.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/list_screen_dokter.dart';
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
                  press: () {},
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
                Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.3,
                    child: buildDokterList()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView buildDokterList() {
    return ListView.builder(
      itemCount: Doctor.doctorList.length,
      itemBuilder: (context, index) {
        return CardDokter(
          img: Doctor.doctorList[index].imgUrl,
          titleText: Doctor.doctorList[index].nama,
          subtitleText: Doctor.doctorList[index].profesi,
        );
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
