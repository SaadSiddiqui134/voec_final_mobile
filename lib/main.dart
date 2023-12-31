import 'package:flutter/foundation.dart';import 'package:flutter/material.dart';import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:maaz_s_application7/core/app_export.dart';void main() { Get.put(EnvConfig());
//TODO : define environment property in initConfig method
Get.find<EnvConfig>().initConfig();
WidgetsFlutterBinding.ensureInitialized(); 
SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) {Logger.init(kReleaseMode ? LogMode.live : LogMode.debug); runApp(MyApp());}); } 
class MyApp extends StatelessWidget {@override Widget build(BuildContext context) { return GetMaterialApp(debugShowCheckedModeBanner: false, theme: theme, translations: AppLocalization(), locale: Get.deviceLocale, fallbackLocale: Locale('en', 'US'), title: 'maaz_s_application7', initialBinding: InitialBindings(), initialRoute: AppRoutes.initialRoute, getPages: AppRoutes.pages); } 
 }
