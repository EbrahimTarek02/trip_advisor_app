import 'package:flutter/material.dart';
import 'package:trip_advisor_app/ui/screens/splash/splash_screen.dart';
import 'package:trip_advisor_app/ui/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (_) => const SplashScreen(),
        WelcomeScreen.routeName : (_) => const WelcomeScreen(),
      },
    );
  }
}
