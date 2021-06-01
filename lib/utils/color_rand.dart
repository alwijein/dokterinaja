import 'dart:math';
import 'package:flutter/material.dart';

class ColorRand {
  Color _randomColor =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];

  Color get randColor => this._randomColor.withOpacity(0.5);
}
