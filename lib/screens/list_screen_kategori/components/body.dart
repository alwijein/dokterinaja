import 'package:dokterin_aja/screens/components/card_kategori.dart';
import 'package:dokterin_aja/utils/color_rand.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  ColorRand colorRand = ColorRand();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.only(left: 10, top: 10),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10, crossAxisSpacing: 5.0, crossAxisCount: 3),
        itemCount: 6,
        itemBuilder: (_, index) {
          return CardKategori(
            image: 'assets/icons/dental_surgeon.png',
            text: "Spesialis\nGigi",
            press: () {},
          );
        },
      ),
    ));
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
