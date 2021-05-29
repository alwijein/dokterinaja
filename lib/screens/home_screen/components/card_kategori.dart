import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class CardKategori extends StatelessWidget {
  const CardKategori({
    Key key,
    this.image,
    this.text,
    this.press,
    this.cardColor,
  }) : super(key: key);
  final String image, text;
  final Function press;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPropertionateScreenHeight(140),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidht(20),
          vertical: getPropertionateScreenHeight(10),
        ),
        child: Column(
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
    );
  }
}
