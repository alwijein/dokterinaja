import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/screens/home_screen/home_screen.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/list_screen_dokter.dart';
import 'package:dokterin_aja/screens/list_screen_kategori/list_screen_kategori.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class CostumeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: kPrimaryColor,
              height: getPropertionateScreenHeight(200),
              child: Image.asset(
                'assets/images/logo-drawer.png',
              ),
            ),
            ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text('Daftar Kategori'),
              onTap: () {
                Navigator.pushNamed(context, ListScreenKategori.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt_outlined),
              title: Text('Daftar Dokter'),
              onTap: () {
                Navigator.pushNamed(context, ListScreenDokter.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('about us'),
            ),
          ],
        ),
      ),
    );
  }
}
