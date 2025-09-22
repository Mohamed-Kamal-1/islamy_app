import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import '../../core/images/app_image.dart';

class BackGroundInto extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  final Widget? child3;

  const BackGroundInto({
    super.key,
    required this.child1,
    required this.child2,
    this.child3,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        color: AppColor.backgroundSelect,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Image.asset(AppImage.logo),
            Flexible(child: child1),
            Flexible(child: child2),
            if (child3 != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: child3,
              ),
            SizedBox(height: height * 0.08),
          ],
        ),
      ),
    );
  }
}
