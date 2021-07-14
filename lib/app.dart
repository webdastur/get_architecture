import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_architecture/data/localization/app_messages.dart';
import 'package:get_architecture/data/utils/app_route_utils.dart';
import 'package:get_architecture/ui/pages/home_page.dart';
import 'package:logger/logger.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppMessages(),
      initialRoute: HomePage.routeName,
      getPages: AppRouteUtils.routes,
      supportedLocales: [
        Locale("ru", "RU"),
        Locale("en", "EN"),
      ],
      fallbackLocale: Locale("ru", "RU"),
      logWriterCallback: (text, {isError = false}) {
        Logger logger = Logger();
        if (isError) {
          logger.e(text.toString());
        } else {
          logger.i(text.toString());
        }
      },
    );
  }
}
