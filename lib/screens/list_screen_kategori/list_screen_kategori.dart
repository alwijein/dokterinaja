import 'package:dokterin_aja/screens/components/costome_drawer.dart';
import 'package:dokterin_aja/services/alert_services.dart';
import 'package:flutter/material.dart';
import 'package:dokterin_aja/screens/list_screen_kategori/components/body.dart';

class ListScreenKategori extends StatelessWidget {
  static String routeName = '/listscreenkategori';
  DateTime currentBackPressTime;
  final bool isDrawer;
  ListScreenKategori({this.isDrawer = false});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return isDrawer == false
            ? Future.value(true)
            : exitAlert(context).show();
      },
      child: Scaffold(
        drawer: isDrawer ? CostumeDrawer() : null,
        appBar: AppBar(title: Text('Daftar Kategori')),
        body: Body(),
      ),
    );
  }
}
