import 'package:buyo_ecommerce_app/navigation_menu.dart';
import 'package:buyo_ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //We have to use the GetMaterialApp because of the Get utilization in helper functions
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //Theme mode to automatically change the theme based on the system theme
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const NavigationMenu(),
    );
  }
}
