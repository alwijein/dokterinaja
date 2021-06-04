import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class HeadlingTitle extends StatelessWidget {
  const HeadlingTitle({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: kTitleTextColor,
        fontSize: getPropertionateScreenWidht(20),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
