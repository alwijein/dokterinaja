import 'package:dokterin_aja/constants.dart';
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
        child: SingleChildScrollView(
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
                    height: getPropertionateScreenHeight(20),
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
                    height: getPropertionateScreenHeight(20),
                  ),
                  buildDokterList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildDokterList() {
    return Column(
      children: [
        CardDokter(
          img: 'assets/images/banner-photo.png',
          bgColor: kBlueColor.withOpacity(0.6),
          titleText: 'Dr. Supramenan',
          subtitleText: 'Dokter Mata',
        ),
        SizedBox(
          height: getPropertionateScreenHeight(15),
        ),
        CardDokter(
          img: 'assets/images/banner-photo.png',
          bgColor: kOrangeColor.withOpacity(0.6),
          titleText: 'Dr. Andi Ikhlasul',
          subtitleText: 'Dokter Kelamin',
        ),
        SizedBox(
          height: getPropertionateScreenHeight(15),
        ),
        CardDokter(
          img: 'assets/images/banner-photo.png',
          bgColor: kYellowColor.withOpacity(0.6),
          titleText: 'Dr. Udin',
          subtitleText: 'Dokter Umum',
        ),
      ],
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
            bgColor: kBlueColor,
            press: () {},
          ),
          SizedBox(
            width: getPropertionateScreenWidht(15),
          ),
          CardKategori(
            image: 'assets/icons/eye_specialist.png',
            text: "Spesialis\nMata",
            bgColor: kYellowColor,
            press: () {},
          ),
          SizedBox(
            width: getPropertionateScreenWidht(15),
          ),
          CardKategori(
            image: 'assets/icons/heart_surgeon.png',
            text: "Spesialis\nJantung",
            bgColor: kOrangeColor,
            press: () {},
          ),
          SizedBox(
            width: getPropertionateScreenWidht(15),
          ),
          CardKategori(
            image: 'assets/icons/dental_surgeon.png',
            text: "Spesialis\nGigi",
            bgColor: kBlueColor,
            press: () {},
          ),
        ],
      ),
    );
  }
}
