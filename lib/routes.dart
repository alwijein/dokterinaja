import 'package:dokterin_aja/screens/home_screen/home_screen.dart';
import 'package:dokterin_aja/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:dokterin_aja/screens/onboarding_screen/onboarding_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
