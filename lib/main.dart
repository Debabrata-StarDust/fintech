import 'package:fintech/view/auth/login_view.dart';
import 'package:fintech/view/bording/onbording_view.dart';
import 'package:fintech/view/bottom_nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/app_shared_preference_controller.dart';
import 'core/app_color.dart';

int? showHome;
int? setHome;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  showHome = sharedPreferences.getInt('showHome');
  await sharedPreferences.setInt('showHome', 1);
  setHome = sharedPreferences.getInt('setHome');
  await sharedPreferences.setInt('setHome', 2);
  // alreadyLogin = sharedPreferences.getString('alreadyLogin');
  // await sharedPreferences.setString("alreadyLogin", '');

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  // get sharedPreferencesService => null;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // navigatorKey: widget.navigatorKey,
      title: 'FIN_TECH',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            color: kWhiteColor,
          )),
      home: setHome != null
          ? const Bottom_Nav_Bar()
          : showHome == 0 || showHome == null
              ? const OnboardView()
              : const LoginView(),
    );
  }
}
