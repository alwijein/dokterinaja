import 'package:dokterin_aja/screens/components/card_kategori.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CardKategori(),
            ],
          ),
        ],
      ),
    );
  }
}
