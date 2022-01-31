import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:happy_new_year/utils/pages.dart';
import 'package:happy_new_year/utils/routes.dart';
import 'package:happy_new_year/utils/themes.dart';
import 'package:happy_new_year/utils/values.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 720),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: Values.appName,
        theme: AppTheme.themeData,
        defaultTransition: Transition.fade,
        transitionDuration: const Duration(seconds: 2),
        getPages: Pages.pages,
        initialRoute: Routes.initial,
      ),
    );
  }
}
