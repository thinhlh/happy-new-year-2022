import 'package:get/route_manager.dart';
import 'package:happy_new_year/presentation/screens/home/home_bindings.dart';
import 'package:happy_new_year/presentation/screens/home/home_screen.dart';
import 'package:happy_new_year/utils/routes.dart';

class Pages {
  Pages._();

  static final pages = <GetPage>[
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeBindings(),
    ),
  ];
}
