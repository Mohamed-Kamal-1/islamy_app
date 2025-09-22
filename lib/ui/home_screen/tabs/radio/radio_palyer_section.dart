import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/colors/app_color.dart';
import '../../../../core/images/app_image.dart';

class RadioPlayerSection extends StatelessWidget {
  const RadioPlayerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 5),
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: height * 0.16,
      width: 370,
      decoration: BoxDecoration(
        color: AppColor.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Radio Ibrahim Al-Akdar',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColor.black,
              fontSize: 20,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImage.radioBottomBackground),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.play_arrow_sharp,
                  color: Colors.black,
                  size: 50,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.volume_up,
                  color: Colors.black,
                  size: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
