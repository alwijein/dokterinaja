import 'package:dokterin_aja/size_config.dart';
import 'package:dokterin_aja/utils/color_rand.dart';
import 'package:flutter/material.dart';

class CardKategori extends StatelessWidget {
  const CardKategori({
    Key key,
    this.image,
    this.text,
    this.press,
  }) : super(key: key);
  final String image, text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    ColorRand colorRand = ColorRand();
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          right: getPropertionateScreenWidht(10),
        ),
        height: getPropertionateScreenHeight(140),
        decoration: BoxDecoration(
          color: colorRand.randColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getPropertionateScreenWidht(20),
            vertical: getPropertionateScreenHeight(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: getPropertionateScreenWidht(60),
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getPropertionateScreenWidht(16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
