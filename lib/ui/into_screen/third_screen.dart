import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors/app_color.dart';
import '../../core/intro_screen/intro_image.dart';
import 'back_ground_into.dart';

class ThirdScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BackGroundInto(
      child1: Image.asset(
        IntroImage.thirdBackground,
        width: double.infinity,
        // height: 200,
      ),
      child2:   Text(
        textAlign: TextAlign.center,
        'Reading the Quran ',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
      child3:  Text(

        textAlign: TextAlign.center,
        'Read, and your Lord is the Most Generous ',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
      ),
    );
  }
}
