import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/quran_resources.dart';

import '../../../../../main.dart';
import '../../../../../utils/colors/app_color.dart';
import '../../../../../utils/images/app_image.dart';

class SurasList extends StatelessWidget {
  final int index;
  const SurasList({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Container(
         padding: EdgeInsets.symmetric(
           //M
           vertical: 12,
         ),
         //M
            width: MediaQuery.of(context).size.width *  0.12,

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
              //M
              SizedBox(height:10.01),
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


