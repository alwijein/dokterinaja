import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "assets/images/doctor-onboard.png",
              width: size.width / 1.2,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: size.height / 6,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width / 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pilih Dokter Yang \nAnda Inginkan",
                    style: TextStyle(
                      color: kTitleTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width / 12,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  Text(
                    "Selamat Datang Di DokterinAja\nKami Akan Menghubungkan Anda\nDengan Dokter Yang Terpercaya",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: size.width / 26,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Pilih Dokter Sekarang",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width / 25),
                    ),
                    style: flatButtonStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
