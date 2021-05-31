import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/screens/detail_dokter/detail_dokter.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class CardDokter extends StatelessWidget {
  const CardDokter({
    Key key,
    this.img,
    this.titleText,
    this.subtitleText,
    this.bgColor,
  }) : super(key: key);
  final String img, titleText, subtitleText;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailDokter.routeNamed);
      },
      child: Container(
        height: getPropertionateScreenHeight(80),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Image.asset(img),
          title: Text(
            titleText,
            style: TextStyle(
                color: kTitleTextColor,
                fontWeight: FontWeight.bold,
                fontSize: getPropertionateScreenWidht(18)),
          ),
          subtitle: Text(
            subtitleText,
            style: TextStyle(
                color: kTitleTextColor.withOpacity(0.7),
                fontSize: getPropertionateScreenWidht(13)),
          ),
        ),
      ),
    );
  }
}