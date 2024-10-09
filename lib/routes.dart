import 'package:aspen_project/home/home_screen.dart';
import 'package:aspen_project/place_screen/place_screen.dart';
import 'package:aspen_project/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  PlaceScreen.routeName: (context) => const PlaceScreen(),
};