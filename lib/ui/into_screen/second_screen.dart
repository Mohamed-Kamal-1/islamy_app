import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors/app_color.dart';
import '../../core/intro_screen/intro_image.dart';
import 'back_ground_into.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BackGroundInto(
      child1: Image.asset(
        IntroImage.secondBackground,
        width: double.infinity,
        // height: 200,
      ),
      child2: Text(
        textAlign: TextAlign.center,
        'Welcome To Islmi App ',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
      child3: Text(
        textAlign: TextAlign.center,
        'We Are Very Excited To Have You In Our Community ',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
    );
  }
}
