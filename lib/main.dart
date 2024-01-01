import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'taskly/page/Authentication/splashscreen.dart';
import 'taskly/theme/theme.dart';
import 'taskly/theme/themecontroller.dart';
import 'taskly/translation/stringtranslation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final themedata = Get.put(Themecontroler());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themedata.isdark ? Mythemes.darkTheme : Mythemes.lightTheme,
      fallbackLocale: const Locale('en', 'US'),
      translations: Apptranslation(),
      locale: const Locale('en', 'US'),
      home: const Splashscreen(),
    );
  }

}