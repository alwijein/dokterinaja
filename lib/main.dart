import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/routes.dart';
import 'package:dokterin_aja/screens/onboarding_screen/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DokterinAja',
      theme: ThemeData(
        textTheme: GoogleFonts.varelaRoundTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      initialRoute: OnboardingScreen.routeName,
      routes: routes,
    );
  }
}
