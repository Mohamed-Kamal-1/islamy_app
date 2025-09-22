import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home_screen/home_screen.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/most_recent/most_recent_provider.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/sura_item/sura_details.dart';
import 'package:islamy_app/core/app_theme/app_theme.dart';
import 'package:islamy_app/core/routes/app_routes.dart';
import 'package:islamy_app/ui/into_screen/display_into_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MostRecentProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      initialRoute: AppRoutes.DisplayIntoScreen.route,
      routes: {
        AppRoutes.DisplayIntoScreen.route: (context) => const DisplayIntoScreen(),
        AppRoutes.HomeScreen.route: (context) => const HomeScreen(),
        AppRoutes.SuraDetails.route: (context) => const SuraDetails(),
      },
    );
  }
}
