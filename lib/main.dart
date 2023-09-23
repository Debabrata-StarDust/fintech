import 'package:fintech/view/auth/login_view.dart';
import 'package:fintech/view/bording/onbording_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/app_color.dart';

int? showHome;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  // final navigatorKey = GlobalKey<NavigatorState>();
  // Create a share preferences instance
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // final sharedPreferencesService = await AppSharedPreferences.instance;
  // set the variable get the date of share preferences
  showHome = sharedPreferences.getInt('showHome');
  await sharedPreferences.setInt('showHome', 1);
  runApp(const MyApp(
      // navigatorKey: navigatorKey,
      // showHome: showHome,
      // sharedPreferencesService: sharedPreferencesService,
      ));
}

class MyApp extends StatefulWidget {
  // final GlobalKey<NavigatorState> navigatorKey;
  // final bool showHome;
  // final AppSharedPreferences sharedPreferencesService;
  const MyApp({
    super.key,
    // required this.navigatorKey,
    // required this.showHome,
    // required this.sharedPreferencesService,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  // @override
  // void initState() {
  //   super.initState();
  //   if (widget.sharedPreferencesService
  //           .getString(key: AppSharedPreferencesKeys.MID) !=
  //       null) {
  //     // onUserLogin();
  //   }
  // }
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
      home: showHome == 0 || showHome == null
          ? const OnboardView()
          : const LoginView(),
    );
  }
}
