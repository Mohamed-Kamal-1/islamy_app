import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/core/colors/app_color.dart';

import '../../core/images/app_image.dart';

class BackGroundInto extends StatelessWidget {
  Widget child1;
  Widget child2;
  Widget? child3;
  BackGroundInto({required this.child1,required this.child2,this.child3 = null});


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02,
        ),
        color: AppColor.backgroundSelect,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImage.logo), Flexible(child: child1), Flexible(child: child2), Padding(
                child: child3,
                padding: EdgeInsets.symmetric(
                  horizontal: 8
                )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08,)
            

          ],
        ),
      ),
    );
  }
}
