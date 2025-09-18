import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
        // height: 200,
      ),
      child2: Text(
        textAlign: TextAlign.center,
        'Holy Quran Radio ',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
      child3: Text(
        textAlign: TextAlign.center,
        'You can listen to the Holy Quran Radio through the application for free and easily ',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
    );
  }
}
