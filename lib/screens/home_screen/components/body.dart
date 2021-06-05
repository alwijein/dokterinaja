import 'package:flutter/material.dart';
import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/models/kategori.dart';
import 'package:dokterin_aja/screens/home_screen/components/banner_card.dart';
import 'package:dokterin_aja/screens/home_screen/components/card_dokter.dart';
import 'package:dokterin_aja/screens/components/card_kategori.dart';
import 'package:dokterin_aja/screens/home_screen/components/headling_text.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/list_screen_dokter.dart';
import 'package:dokterin_aja/screens/list_screen_kategori/list_screen_kategori.dart';
import 'package:dokterin_aja/services/database_services.dart';
import 'package:dokterin_aja/size_config.dart';

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
                      Navigator.pushNamed(
                          context, ListScreenKategori.routeName);
                    },
                  ),
                  SizedBox(
                    height: getPropertionateScreenHeight(10),
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.16,
                    child: buildKategoriList(context),
                  ),
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
                    child: buildDokterList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  FutureBuilder buildDokterList() {
    return FutureBuilder<List<Doctor>>(
      future: DatabaseServices.doctorsLimit(),
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          List<CardDokter> cardDokter = [];
          for (var doctor in snapshot.data) {
            cardDokter.add(
              CardDokter(
                doctor,
                img: doctor.imgUrl,
                titleText: doctor.nama,
                subtitleText: doctor.profesi,
              ),
            );
          }
          return Column(
            children: cardDokter,
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
    );
  }

  ListView buildKategoriList(context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Kategori.kategori.length,
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
        });
  }

// list view builder for dokter card

// return ListView.builder(
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: snapshot.data.length,
//             itemBuilder: (_, index) {
//               Doctor doctor = snapshot.data[index];
//               return CardDokter(
//                 img: doctor.imgUrl,
//                 titleText: doctor.nama,
//                 subtitleText: doctor.profesi,
//               );
//             },
//           );

}
