import 'package:dokterin_aja/screens/components/costome_drawer.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/components/body.dart';
import 'package:dokterin_aja/services/alert_services.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class ListScreenDokter extends StatelessWidget {
  static String routeName = "/listscreendokter";
  final String kategori;
  final bool isDrawer;
  ListScreenDokter({this.kategori, this.isDrawer = false});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async {
        return isDrawer == false
            ? Future.value(true)
            : exitAlert(context).show();
      },
      child: Scaffold(
        drawer: isDrawer == true ? CostumeDrawer() : null,
        appBar: AppBar(
          title: Text('Daftar Dokter'),
        ),
        body: Body(
          kategori: this.kategori,
          isKategori: true,
        ),
      ),
    );
  }
}
