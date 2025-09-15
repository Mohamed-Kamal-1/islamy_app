import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/quran_resources.dart';

import '../../../../../main.dart';
import '../../../../../utils/colors/app_color.dart';
import '../../../../../utils/images/app_image.dart';

class SuraItem extends StatelessWidget {
  final int index;
  final double width;
  final double height;

  const SuraItem({
    required this.index,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Row(
      children: [
       Container(
         padding: EdgeInsets.symmetric(
           vertical: height * calculateRatio(15, isWidth: false),
         ),
         width: width * calculateRatio(52, isWidth: true),
         height: height * calculateRatio(52, isWidth: false),
         decoration: BoxDecoration(
           image:const DecorationImage(image: AssetImage(AppImage.suraNumber),fit: BoxFit.cover),
         ),
         child: Text('${index + 1 }',
           textAlign: TextAlign.center,
           style: Theme.of(context).textTheme.titleSmall?.copyWith(
             color: AppColor.white,
             fontSize: 12,
           ),
         ),
       ),
        SizedBox(width: 24,),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center ,
            children: [
              Text(QuranResources.englishQuranResources[index],
              style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: height * calculateRatio(10, isWidth: false),),
              Text(QuranResources.arabicQuranResources[index],
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColor.white
              ),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(QuranResources.arabicQuranResources[index],
        style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}


