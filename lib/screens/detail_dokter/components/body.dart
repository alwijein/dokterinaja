import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/screens/components/pills_rounded.dart';
import 'package:dokterin_aja/screens/detail_dokter/components/card_jadwal.dart';
import 'package:dokterin_aja/screens/detail_dokter/components/desc_dokter.dart';
import 'package:dokterin_aja/screens/detail_dokter/components/headling_title.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:dokterin_aja/utils/popup_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final Doctor doctor;
  Body(this.doctor);
  @override
  Widget build(BuildContext context) {
    final Uri _telLaunchUri = Uri(
      scheme: 'tel',
      path: doctor.nomor,
    );
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/detail-background.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/back.svg',
                      height: 18,
                    ),
                  ),

                  // Masih Bermasalah

                  // GestureDetector(
                  //   onTap: () {
                  //     return PopupMenuButton(
                  //       onSelected: (item) => SelectedItem(context, item),
                  //       itemBuilder: (context) => [
                  //         PopupMenuItem(
                  //           value: 0,
                  //           child: Text("Telepon"),
                  //         ),
                  //         PopupMenuItem(
                  //           value: 1,
                  //           child: Text("Chat Via WA"),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  //   child: SvgPicture.asset(
                  //     'assets/icons/3dots.svg',
                  //     height: 18,
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: getPropertionateScreenHeight(230),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Column(
                  children: [
                    DelayedDisplay(
                      delay: Duration(milliseconds: 200),
                      child: Row(
                        children: [
                          Container(
                            height: getPropertionateScreenHeight(100),
                            width: getPropertionateScreenWidht(100),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(doctor.imgUrl),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. " + doctor.nama,
                                style: TextStyle(
                                  color: kTitleTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getPropertionateScreenHeight(25),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    doctor.profesi,
                                    style: TextStyle(
                                      color: kSecondaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getPropertionateScreenHeight(17),
                                    ),
                                  ),
                                  Text(
                                    "- Awal Bros",
                                    style: TextStyle(
                                      color: kSecondaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getPropertionateScreenHeight(17),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  PillsRounded(
                                    text: doctor.pengalaman,
                                  ),
                                  PillsRounded(
                                    text: doctor.price == 'free'
                                        ? doctor.price
                                        : 'Rp' + doctor.price,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () =>
                                        launch(_telLaunchUri.toString()),
                                    child: SvgPicture.asset(
                                      'assets/icons/phone.svg',
                                      width: getPropertionateScreenWidht(20),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () => _launchURL(),
                                    child: SvgPicture.asset(
                                      'assets/icons/chat.svg',
                                      width: getPropertionateScreenWidht(20),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DelayedDisplay(
                          delay: Duration(milliseconds: 200),
                          child: HeadlingTitle(
                            title: 'Tentang Dokter',
                          ),
                        ),
                        DelayedDisplay(
                          delay: Duration(milliseconds: 200),
                          child: DescDokter(
                            about: doctor.about,
                          ),
                        ),
                        DelayedDisplay(
                          delay: Duration(milliseconds: 200),
                          child: HeadlingTitle(
                            title: 'Jadwal Kerja',
                          ),
                        ),
                        DelayedDisplay(
                          delay: Duration(milliseconds: 200),
                          child: CardJadwal(
                            hari: "Senin - Jum'at",
                            jam: doctor.jadwalKerja,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    String url = 'https://wa.me/' + doctor.nomor;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
