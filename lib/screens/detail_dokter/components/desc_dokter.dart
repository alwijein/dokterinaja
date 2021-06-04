import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class DescDokter extends StatelessWidget {
  const DescDokter({
    Key key,
    this.about,
  }) : super(key: key);
  final String about;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        about,
        style: TextStyle(
          color: kSecondaryColor,
          fontSize: getPropertionateScreenWidht(15),
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
