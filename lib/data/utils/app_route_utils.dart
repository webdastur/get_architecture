import 'package:get/get.dart';
import 'package:get_architecture/ui/pages/home_page.dart';

class AppRouteUtils {
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
    ),
  ];
}
