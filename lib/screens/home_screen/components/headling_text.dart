import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class HeadlingText extends StatelessWidget {
  const HeadlingText({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: kTextColor,
            fontSize: getPropertionateScreenWidht(18),
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            "Selengkapnya",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getPropertionateScreenWidht(15),
            ),
          ),
        ),
      ],
    );
  }
}
