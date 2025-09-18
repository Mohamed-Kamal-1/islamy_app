import 'package:flutter/cupertino.dart';
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
        // height: 200,
      ),
      child2: Text(
        textAlign: TextAlign.center,
        'Bearish ',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
      child3: Text(
        textAlign: TextAlign.center,
        'Praise the name of your Lord, the Most High ',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
    );
  }
}
