import 'package:flutter/material.dart';
import 'package:dokterin_aja/screens/list_screen_kategori/components/body.dart';

class ListScreenKategori extends StatelessWidget {
  static String routeNamed = '/listscreenkategori';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
