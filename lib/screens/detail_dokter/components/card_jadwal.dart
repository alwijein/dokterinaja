import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class CardJadwal extends StatelessWidget {
  const CardJadwal({
    Key key,
    this.jam,
    this.hari,
  }) : super(key: key);

  final String jam, hari;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kBlueColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          getPropertionateScreenWidht(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.date_range_outlined,
              color: Colors.white,
              size: 50,
            ),
            Column(
              children: [
                Text(
                  hari,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getPropertionateScreenWidht(20),
                  ),
                ),
                Text(
                  jam,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getPropertionateScreenWidht(20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
