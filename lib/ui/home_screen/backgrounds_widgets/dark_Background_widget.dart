import 'package:flutter/cupertino.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/images/app_image.dart';

class DarkBackgroundWidget extends StatelessWidget {
  final Widget child;

  const DarkBackgroundWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
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
