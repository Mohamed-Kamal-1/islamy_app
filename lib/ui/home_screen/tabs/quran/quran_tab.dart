import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/quran_sources.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/sura_item/suras_list.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/icons/app_icon.dart';
import 'package:islamy_app/core/images/app_image.dart';
import '../../../../core/routes/app_routes.dart';
import 'most_recent/most_recent_design.dart';

class QuranTab extends StatefulWidget {
  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<int> searchResultOfSuraList = List.generate(114, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 21),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.065,
          ),
          child: TextFormField(
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
                padding: EdgeInsets.symmetric(vertical: 15),
                child: SvgPicture.asset(
                  AppIcon.ic_quran,
                  width: 28,
                  height: 28,
                  colorFilter: ColorFilter.mode(AppColor.gold, BlendMode.srcIn),
                ),
              ),

              hintText: 'Sura Name',
              hintStyle: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: Color(0xFFD9D9D9)),
            ),
          ),
        ),

        SizedBox(height: 20),
        Text('Most Recently', style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 15),

        MostRecentDesign(),
        //M
        SizedBox(height: 10),
        Text(' Suras List', style: Theme.of(context).textTheme.titleMedium),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            // keyboardDismissBehavior:ScrollViewKeyboardDismissBehavior.onDrag ,
            padding: EdgeInsets.symmetric(vertical: 15),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.SuraDetails.route,
                    arguments: searchResultOfSuraList[index],
                  );
                },
                //M
                child: SurasList(index: searchResultOfSuraList[index]),
              );
            },
            separatorBuilder: (context, index) =>
                Divider(endIndent: 64, thickness: 1.5, indent: 64),
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

  void searchByUserInputSura(String textFormUser) {
    List<int> addIndexOfSura = [];
    for (int i = 0; i < QuranResources.englishQuranResources.length; i++) {
      if (QuranResources.englishQuranResources[i].toLowerCase().contains(
            textFormUser.toLowerCase(),
          ) ||
          QuranResources.arabicQuranResources[i].toLowerCase().contains(
            textFormUser.toLowerCase(),
          )) {
        addIndexOfSura.add(i);
      }
      else{

      }
    }
    setState(() {
      searchResultOfSuraList = addIndexOfSura;
    });
  }
}
