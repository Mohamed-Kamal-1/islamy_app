import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/quran_resources.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/sura_item/sura_item.dart';
import 'package:islamy_app/utils/colors/app_color.dart';
import 'package:islamy_app/utils/icons/app_icon.dart';
import 'package:islamy_app/utils/images/app_image.dart';

import '../../../../main.dart';
import '../../../../utils/routes/app_routes.dart';

class QuranTab extends StatefulWidget {
  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<int> searchResultOfSuraList = List.generate(114, (index) => index,);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * calculateRatio(20, isWidth: false)),
        TextFormField(
          onChanged: (textFormUser) {
            searchByUserInputSura(textFormUser);
          },
          cursorColor: AppColor.gold,
          focusNode: FocusNode(),
          style: TextStyle(color: AppColor.lightGold),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xB3202020),
            focusedBorder: builtTextFormFieldBorder(),

            disabledBorder: builtTextFormFieldBorder(),

            enabledBorder: builtTextFormFieldBorder(),

            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * calculateRatio(15, isWidth: false),
              ),
              child: SvgPicture.asset(
                AppIcon.ic_quran,
                width: 28,
                height: 28,
                colorFilter: ColorFilter.mode(AppColor.gold, BlendMode.srcIn),
              ),
            ),

            hintText: 'Sura Name',
            hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Color(0xFFD9D9D9),
            ),
          ),
        ),

        SizedBox(height: height * calculateRatio(20, isWidth: false)),
        Text(
          'Most Recently',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: height * calculateRatio(15, isWidth: false)),

        SizedBox(
          height: height * calculateRatio(120, isWidth: false),

          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * calculateRatio(10, isWidth: true),
                ),
                decoration: BoxDecoration(
                  color: AppColor.gold,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(QuranResources.englishQuranResources [index], style:Theme.of(context).textTheme.headlineSmall),
                        Text(QuranResources.arabicQuranResources [index], style:Theme.of(context).textTheme.headlineSmall),
                        Text("112 Verses", style: Theme.of(context).textTheme.titleSmall),
                      ],
                    ),
                    Image.asset(AppImage.backgroundSura),
                  ],
                ),
              );
            },

            separatorBuilder: (context, index) =>
                SizedBox(width: width * calculateRatio(10, isWidth: true)),
            itemCount: 114,
          ),
        ),
        SizedBox(height: height * calculateRatio(15, isWidth: false)),
        Text(
          ' Suras List',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(
              vertical: height * calculateRatio(20, isWidth: false),
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.SuraDetails.route,
                      arguments:searchResultOfSuraList[index]
                    );
                  },
                  child: SuraItem(index: searchResultOfSuraList[index],width: width,height: height,));
            },
            separatorBuilder: (context, index) => Divider(
              endIndent: width * calculateRatio(60, isWidth: true),
              thickness: 1.5,
              indent: width * calculateRatio(60, isWidth: true),
            ),
            itemCount: searchResultOfSuraList.length,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder builtTextFormFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColor.gold, width: 2),
    );
  }

  void searchByUserInputSura(String textFormUser){
    List<int> addIndexOfSura = [];
    for(int i = 0; i < QuranResources.englishQuranResources.length; i++){
      if (QuranResources.englishQuranResources[i].contains(textFormUser)) {
        addIndexOfSura.add(i);
      }
      if (QuranResources.arabicQuranResources[i].contains(textFormUser)) {
        addIndexOfSura.add(i);
      }
    }
    setState(() {
    searchResultOfSuraList = addIndexOfSura;
    });
  }
}
