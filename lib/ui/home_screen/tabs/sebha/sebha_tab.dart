import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ui/home_screen/tabs/sebha/azkar_source/azkar_source.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/images/app_image.dart';
import 'package:islamy_app/ui/home_screen/tabs/sebha/sebha_resource/sebha_resource.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0.0;
  int index = 0;
  int counter = SebhaResource.sebehaCount[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          textAlign: TextAlign.center,
          'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: AppColor.white,
            fontSize: 30,
          ),
        ),
        Stack(
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
            Container(
              // color: Colors.redAccent,
              height: MediaQuery.of(context).size.height * 0.16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(SebhaResource.sebeha[index],
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColor.white,
                      fontSize: 36,
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
            )

          ],
        ),
      ],
    );
  }

  void increaseIndex() {
    if (counter > 0) {
      counter--;
      turns += 0.1;
      setState(() {});
    }

    else {
      turns = 0.0;
      index++;
      counter = SebhaResource.sebehaCount[index];
      setState(() {});
    }
  }
}


