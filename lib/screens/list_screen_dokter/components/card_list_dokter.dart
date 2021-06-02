import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class CardListDokter extends StatelessWidget {
  const CardListDokter({
    Key key,
    this.img,
    this.nama,
    this.profesi,
    this.price,
  }) : super(key: key);
  final String img, nama, profesi, price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(5),
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getPropertionateScreenHeight(20),
          horizontal: getPropertionateScreenWidht(20),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: getPropertionateScreenWidht(70),
                child: Container(
                  height: getPropertionateScreenHeight(100),
                  width: getPropertionateScreenWidht(100),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: TextStyle(
                    color: kTitleTextColor,
                    fontSize: getPropertionateScreenWidht(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  profesi,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: kTitleTextColor.withOpacity(0.6),
                    fontSize: getPropertionateScreenWidht(15),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              price,
              style: TextStyle(fontSize: getPropertionateScreenWidht(17)),
            ),
          ],
        ),
      ),
    );
  }
}
