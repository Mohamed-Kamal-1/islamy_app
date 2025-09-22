import 'package:flutter/material.dart';
import '../../core/colors/app_color.dart';
import '../../core/intro_screen/intro_image.dart';
import 'back_ground_into.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundInto(
      child1: Image.asset(
        IntroImage.thirdBackground,
        width: double.infinity,
      ),
      child2: Text(
        'Reading the Quran',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColor.gold,
        ),
      ),
      child3: Text(
        'Read, and your Lord is the Most Generous',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColor.gold,
        ),
      ),
    );
  }
}
