import 'package:flutter/material.dart';
import '../../core/colors/app_color.dart';
import '../../core/intro_screen/intro_image.dart';
import 'back_ground_into.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundInto(
      child1: Image.asset(
        IntroImage.fourthBackground,
        width: double.infinity,
      ),
      child2: Text(
        'Bearish',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColor.gold,
        ),
      ),
      child3: Text(
        'Praise the name of your Lord, the Most High',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColor.gold,
        ),
      ),
    );
  }
}
