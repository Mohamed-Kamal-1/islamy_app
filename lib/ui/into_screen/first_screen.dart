import 'package:flutter/material.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/intro_screen/intro_image.dart';
import 'back_ground_into.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundInto(
      child1: Image.asset(
        IntroImage.firstBackground,
        width: double.infinity,
      ),
      child2: Text(
        'Welcome To Islmi App',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColor.gold,
        ),
      ),
    );
  }
}
