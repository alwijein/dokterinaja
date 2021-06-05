import 'package:dokterin_aja/screens/components/costome_drawer.dart';
import 'package:dokterin_aja/screens/home_screen/components/body.dart';
import 'package:dokterin_aja/services/alert_services.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: CostumeDrawer(),
      appBar: AppBar(),
      body: WillPopScope(
          onWillPop: () async {
            return exitAlert(context).show();
          },
          child: Body()),
    );
  }
}
