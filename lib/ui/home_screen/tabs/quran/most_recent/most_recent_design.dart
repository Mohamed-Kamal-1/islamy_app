import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Theme;
import 'package:islamy_app/ui/home_screen/tabs/quran/most_recent/shared_prefs_helper.dart';

import '../../../../../core/colors/app_color.dart';
import '../../../../../core/images/app_image.dart';
import '../quran_sources.dart';

class MostRecentDesign extends StatefulWidget {
  @override
  State<MostRecentDesign> createState() => _MostRecentDesignState();
}

class _MostRecentDesignState extends State<MostRecentDesign> {


  @override
  void initState() {
    super.initState();
    getMostRecentList();
  }

  void getMostRecentList()async{
    mostRecentList = await readMostRecentList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Visibility(
            visible: mostRecentList.isNotEmpty,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 11),
              decoration: BoxDecoration(
                color: AppColor.gold,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        QuranResources.englishQuranResources[mostRecentList[index]],
            
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        QuranResources.arabicQuranResources[mostRecentList[index]],
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        QuranResources.ayaNumber[mostRecentList[index]],
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  Image.asset(AppImage.backgroundSura),
                ],
              ),
            ),
          );
        },

        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: mostRecentList.length,
      ),
    );
  }
}
