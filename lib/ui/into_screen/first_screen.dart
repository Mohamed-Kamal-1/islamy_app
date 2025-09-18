import 'package:flutter/material.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/intro_screen/intro_image.dart';

import 'back_ground_into.dart';

class  FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BackGroundInto(
      child1: Image.asset(
        IntroImage.firstBackground,
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
    );
  }
}
