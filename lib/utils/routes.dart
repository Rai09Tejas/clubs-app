import 'package:club_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
Map<String, Widget Function(BuildContext)> getAppRoutes() {
  Map<String, Widget Function(BuildContext)> appRoutes = {
    initialScreen: (context) => const HomeScreen(),

  };

  return appRoutes;
}

const String initialScreen = "/";
