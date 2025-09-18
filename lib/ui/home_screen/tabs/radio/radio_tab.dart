import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/core/images/app_image.dart';
import 'package:islamy_app/ui/home_screen/tabs/radio/radio_palyer_section.dart';

import '../../../../core/colors/app_color.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Color(0x80202020),
            // color: Colors.brown,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Radio',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColor.white,
                  fontSize: 16,
                  backgroundColor: Colors.transparent
                ),
              ),

              Text(
                'Reciters',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColor.white,
                  fontSize: 16,
                    backgroundColor: Colors.transparent
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
       Expanded(
         child: ListView.builder(
             itemBuilder: (context, index) {
               return RadioPalyerSection();
             },

             itemCount: 30,
         ),
       )
      ],
    );
  }
}
