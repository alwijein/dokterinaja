import 'package:dokterin_aja/screens/onboarding_screen/components/body.dart';
import 'package:dokterin_aja/services/alert_services.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
          onWillPop: () async {
            return exitAlert(context).show();
          },
          child: Body()),
    );
  }
}
