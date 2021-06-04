import 'package:dokterin_aja/models/kategori.dart';
import 'package:dokterin_aja/screens/components/card_kategori.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/list_screen_dokter.dart';
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
            image: Kategori.kategori[index].imgUrl,
            text: Kategori.kategori[index].judulKategori,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListScreenDokter(
                  kategori: Kategori.kategori[index].judulKategori,
                );
              }));
            },
          );
        },
      ),
    ));
  }
}
