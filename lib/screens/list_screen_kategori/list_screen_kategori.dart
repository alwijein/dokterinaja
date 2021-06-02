import 'package:dokterin_aja/constants.dart';
import 'package:flutter/material.dart';
import 'package:dokterin_aja/screens/list_screen_kategori/components/body.dart';

class ListScreenKategori extends StatelessWidget {
  static String routeName = '/listscreenkategori';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: kBackgroundColor,
          title: Text(
            'Daftar Kategori',
            style: TextStyle(
              color: kTitleTextColor,
            ),
          )),
      body: Body(),
    );
  }
}
