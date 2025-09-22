import 'package:flutter/material.dart';
import '../../core/colors/app_color.dart';
import '../../core/intro_screen/intro_image.dart';
import 'back_ground_into.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundInto(
      child1: Image.asset(
        IntroImage.fifthBackground,
        width: double.infinity,
      ),
      child2: Text(
        'Holy Quran Radio',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
      child3: Text(
        'You can listen to the Holy Quran Radio through the application for free and easily',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
    );
  }
}
