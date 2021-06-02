import 'package:dokterin_aja/screens/detail_dokter/components/body.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class DetailDokter extends StatelessWidget {
  static String routeName = '/detaildokter';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
