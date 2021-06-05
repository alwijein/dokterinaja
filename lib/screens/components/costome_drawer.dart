import 'package:about/about.dart';
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
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  HomeScreen.routeName,
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text('Daftar Kategori'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return ListScreenKategori(
                    isDrawer: true,
                  );
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt_outlined),
              title: Text('Daftar Dokter'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return ListScreenDokter(isDrawer: true);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('about us'),
              onTap: () {
                showAboutPage(
                  context: context,
                  values: {
                    'version': '1.0',
                    'year': DateTime.now().year.toString(),
                  },
                  applicationLegalese: 'Copyright © kelompok RPL, {{ year }}',
                  applicationDescription: const Text(
                      'Aplikasi konsultasi dokter yang dimana kita bisa melakukan konsultasi dengan dokter yang kita pilih dengan menghubunginya langsung menggunakan via whatsapp atau dengan meneleponnya langsung\n\nNama Stambuk Kelompok :\n\nAlwi Jaya (13020180226)\nAchmad Farid Aldin (13020180243)\nAsrul Ashari Rajab (13020180249)\nHeldi Umar (13020180254)'),
                  children: <Widget>[
                    MarkdownPageListTile(
                      icon: Icon(Icons.list),
                      title: const Text('Changelog'),
                      filename: 'CHANGELOG.md',
                    ),
                    LicensesPageListTile(
                      icon: Icon(Icons.favorite),
                    ),
                  ],
                  applicationIcon: const SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                      image: AssetImage('assets/images/LogoDokterinAja.png'),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
