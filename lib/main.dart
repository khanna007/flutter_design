import 'package:flutter/material.dart';
import 'package:working_flow/sample_page/demo_page.dart';
import 'package:working_flow/utils/app_bar/custom_app_bar.dart';
import 'package:working_flow/utils/bottom_bar/fancy_tab_bar.dart';

import 'animations/wonder_illustration_config.dart';
import 'on_boarding_screen/first_on_boarding_screen.dart';
import 'on_boarding_screen/main_on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home:const MainOnBoardingScreen(),
    );
  }

 }
