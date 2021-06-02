import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/screens/detail_dokter/detail_dokter.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:dokterin_aja/utils/color_rand.dart';
import 'package:flutter/material.dart';

class CardDokter extends StatelessWidget {
  const CardDokter({
    Key key,
    this.img,
    this.titleText,
    this.subtitleText,
  }) : super(key: key);
  final String img, titleText, subtitleText;

  @override
  Widget build(BuildContext context) {
    ColorRand colorRand = new ColorRand();
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailDokter.routeName);
      },
      child: Container(
        margin: EdgeInsets.only(
          top: getPropertionateScreenHeight(10),
        ),
        decoration: BoxDecoration(
          color: colorRand.randColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Container(
            height: getPropertionateScreenHeight(100),
            width: getPropertionateScreenWidht(100),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Text(
            titleText,
            style: TextStyle(
              color: kTitleTextColor,
              fontWeight: FontWeight.bold,
              fontSize: getPropertionateScreenWidht(18),
            ),
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
