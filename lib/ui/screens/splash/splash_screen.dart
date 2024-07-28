import 'package:flutter/material.dart';
import 'package:trip_advisor_app/ui/screens/welcome/welcome_screen.dart';
import 'package:trip_advisor_app/ui/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushNamedAndRemoveUntil(context, WelcomeScreen.routeName, (Route<dynamic> route) => false)
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.splashScreenImage,
      fit: BoxFit.fill,
    );
  }
}
