
import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../screens/home/home_screen.dart';
import '../screens/splash/splash_screen.dart';

class AppRouter {
  late Widget startScreen;

  Route? onGenerateRoute(RouteSettings settings){
    startScreen = const SplashScreen();

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case homeLayout:
        return MaterialPageRoute(builder: (_) => const HomeLayout());
      default:
        return null;
    }
  }
}