import 'package:flutter/cupertino.dart';
import 'package:islamy_app/utils/colors/app_color.dart';
import 'package:islamy_app/utils/images/app_image.dart';

class DarkBackgroundWidget extends StatelessWidget {
  Widget child;

  DarkBackgroundWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.black,
        image: DecorationImage(
          image: AssetImage(AppImage.darkBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
