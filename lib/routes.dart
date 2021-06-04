import 'package:dokterin_aja/screens/detail_dokter/detail_dokter.dart';
import 'package:dokterin_aja/screens/home_screen/home_screen.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/list_screen_dokter.dart';
import 'package:dokterin_aja/screens/list_screen_kategori/list_screen_kategori.dart';
import 'package:dokterin_aja/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:dokterin_aja/screens/onboarding_screen/onboarding_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ListScreenDokter.routeName: (context) => ListScreenDokter(),
  // DetailDokter.routeName: (context) => DetailDokter(),
  ListScreenKategori.routeName: (context) => ListScreenKategori(),
};
