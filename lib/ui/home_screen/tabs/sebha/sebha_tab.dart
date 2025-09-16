import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ui/home_screen/tabs/sebha/azkar_source/azkar_source.dart';
import 'package:islamy_app/utils/colors/app_color.dart';
import 'package:islamy_app/utils/images/app_image.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0.0;
  int index = 0;
  int counter = AzkarSource.azkarCount[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              hitTestBehavior: HitTestBehavior.deferToChild,
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                textAlign: TextAlign.center,
                AzkarSource.azkar[index],
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColor.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: increaseIndex,
                child: AnimatedRotation(
                  duration: Duration(seconds: 1),
                  turns: turns,
                  child: Image.asset(AppImage.sebha),
                ),
              ),
              Text('$counter',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontSize: 36,
                color: AppColor.white
              ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void increaseIndex() {
    if (counter > 0) {
      counter--;
      turns += 0.1;
      setState(() {});
    } else {
      index++;
      counter = AzkarSource.azkarCount[index];
      setState(() {});
      turns = 0.0;
    }
  }
}


