import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/colors/app_color.dart';
import '../../../../core/images/app_image.dart';

class RadioPalyerSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10,top: 5),
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      height: MediaQuery.of(context).size.height * 0.16,
      width: 370,
      decoration: BoxDecoration(
          color: AppColor.gold,
          borderRadius: BorderRadius.circular(20)
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


            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImage.radioBottomBackground),fit: BoxFit.fill)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow_sharp,
                    color: Colors.black,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_up,
                    color: Colors.black,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
