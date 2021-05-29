import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/screens/home_screen/components/body.dart';
import 'package:dokterin_aja/screens/home_screen/components/costome_drawer.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: CostumeDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kSecondaryColor),
        backgroundColor: kBackgroundColor,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
