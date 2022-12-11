import 'package:flutter/material.dart';
import 'package:newapp/constants/color_constant.dart';
import 'package:newapp/screens/home_screen.dart';

import 'constants/app_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryWhiteColor,
        backgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
            headline1: TextStyle(
                color: AppColors.headerTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 28),
            headline2:
                TextStyle(color: AppColors.headerTextColor, fontSize: 24),
            headline3: TextStyle(
                color: AppColors.primaryWhiteColor,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        appBarTheme:
            const AppBarTheme(backgroundColor: Color(0xFFCADCF8), elevation: 0),
      ),
      home: const HomeScreen(), //register page here
    );
  }
}
