import 'package:aspen_project/size_config.dart';
import 'package:aspen_project/splash_screen/components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
       body: Body(),
      );
  }
}