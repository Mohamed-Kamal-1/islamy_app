import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home_screen/home_screen.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/sura_item/sura_details.dart';
import 'package:islamy_app/core/app_theme/app_theme.dart';
import 'package:islamy_app/core/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.HomeScreen.route,
      routes: {
        AppRoutes.HomeScreen.route: (context) => HomeScreen(),

        AppRoutes.SuraDetails.route: (context) => SuraDetails(),
      },
    );
  }
}
