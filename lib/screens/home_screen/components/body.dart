import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/screens/home_screen/components/banner_card.dart';
import 'package:dokterin_aja/screens/home_screen/components/card_kategori.dart';
import 'package:dokterin_aja/screens/home_screen/components/headling_text.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                    height: getPropertionateScreenHeight(30),
                  ),
                  buildKategoriList(),
                  SizedBox(
                    height: getPropertionateScreenHeight(30),
                  ),
                  HeadlingText(
                    text: "Daftar Dokter",
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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
            cardColor: kBlueColor,
            press: () {},
          ),
          SizedBox(
            width: getPropertionateScreenWidht(15),
          ),
          CardKategori(
            image: 'assets/icons/eye_specialist.png',
            text: "Spesialis\nMata",
            cardColor: kYellowColor,
            press: () {},
          ),
          SizedBox(
            width: getPropertionateScreenWidht(15),
          ),
          CardKategori(
            image: 'assets/icons/heart_surgeon.png',
            text: "Spesialis\nJantung",
            cardColor: kOrangeColor,
            press: () {},
          ),
          SizedBox(
            width: getPropertionateScreenWidht(15),
          ),
          CardKategori(
            image: 'assets/icons/dental_surgeon.png',
            text: "Spesialis\nGigi",
            cardColor: kBlueColor,
            press: () {},
          ),
        ],
      ),
    );
  }
}
