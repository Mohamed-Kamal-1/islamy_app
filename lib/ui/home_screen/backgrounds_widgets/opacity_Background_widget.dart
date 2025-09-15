import 'package:flutter/cupertino.dart';

import '../../../main.dart';
import '../../../utils/images/app_image.dart';

class opacityBackgroundWidget extends StatelessWidget {
  Widget child;
  String backgroundImagePath;

  opacityBackgroundWidget({required this.backgroundImagePath, required this.child});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            backgroundImagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height * calculateRatio(30, isWidth: false),
                ),
                child: Image.asset(
                  AppImage.logo,
                  width: width * calculateRatio(299, isWidth: true),
                  height: height * calculateRatio(141, isWidth: false),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(child: child),

            ],
          ),
        ],
      ),
    );
  }
}
