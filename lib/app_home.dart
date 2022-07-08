import 'package:flutter/material.dart';

import 'routes/app_imports_page.dart';
import 'routes/app_routes.dart';
import 'utils/app_config_ui.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppConfigUI.themeData,
      getPages: AppRoutes.routePage,
      initialRoute: Home.routName,
      initialBinding: HomepageBindings(),
    );
  }
}
