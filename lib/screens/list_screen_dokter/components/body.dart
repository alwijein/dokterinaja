import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: getPropertionateScreenHeight(20),
              horizontal: getPropertionateScreenWidht(20),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/banner-photo.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Tirta',
                            style: TextStyle(
                              color: kTitleTextColor,
                              fontSize: getPropertionateScreenWidht(20),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Dokter Umum',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: kTitleTextColor.withOpacity(0.6),
                              fontSize: getPropertionateScreenWidht(15),
                            ),
                          ),
                        ],
                      ),
                      Text('Rp25.000'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
