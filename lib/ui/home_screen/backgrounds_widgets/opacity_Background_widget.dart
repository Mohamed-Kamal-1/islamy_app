import 'package:flutter/cupertino.dart';

import '../../../core/images/app_image.dart';

class opacityBackgroundWidget extends StatelessWidget {
  Widget child;
  String backgroundImagePath;

  opacityBackgroundWidget({required this.backgroundImagePath, required this.child});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                  top: height * 0.032,
                ),
                child: Image.asset(
                  AppImage.logo,
                  width: width * 0.56,
                    height: height * 0.131,
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
