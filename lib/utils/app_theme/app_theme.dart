import 'package:flutter/material.dart';
import 'package:islamy_app/utils/colors/app_color.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    canvasColor: AppColor.gold,
    scaffoldBackgroundColor: Colors.transparent,


    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.white,
      unselectedItemColor: AppColor.black,


      selectedIconTheme: IconThemeData(color: AppColor.brown),


    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.black,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColor.gold,
      )
    ),

    textTheme: TextTheme(
      titleMedium: TextStyle(
        color:AppColor.lemonChiffon,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
      headlineSmall: TextStyle(
          color:AppColor.black,
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),
      titleSmall: TextStyle(
          color:AppColor.black,
          fontSize: 16,
          fontWeight: FontWeight.bold
      )
    )
  );
}
