import 'package:flutter/material.dart';
import '../../core/colors/app_color.dart';
import '../../core/intro_screen/intro_image.dart';
import 'back_ground_into.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundInto(
      child1: Image.asset(
        IntroImage.secondBackground,
        width: double.infinity,
      ),
      child2: Text(
        'Welcome To Islmi App',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColor.gold,
        ),
      ),
      child3: Text(
        'We Are Very Excited To Have You In Our Community',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColor.gold,
        ),
      ),
    );
  }
}
