import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.varelaRoundTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: OnboardingScreen(),
    );
  }
}
