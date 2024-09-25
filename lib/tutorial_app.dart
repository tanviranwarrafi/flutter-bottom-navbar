import 'package:flutter/material.dart';
import 'package:tutorial/constants/app_constants.dart';
import 'package:tutorial/screens/landing_screen.dart';
import 'package:tutorial/themes/colors.dart';
import 'package:tutorial/utils/keys.dart';

class TutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: primary,
      title: APP_NAME,
      home: LandingScreen(),
      navigatorKey: navigatorKey,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}