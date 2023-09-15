import 'package:fintech/view/bording/onbording_view.dart';
import 'package:fintech/view/bottom_nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FINTECH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
       appBarTheme:const AppBarTheme(
         color:kWhiteColor,
       )
      ),
      home:const Bottom_Nav_Bar(),
    );
  }
}

