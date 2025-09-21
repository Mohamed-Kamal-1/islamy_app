import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Theme;
import 'package:islamy_app/ui/home_screen/tabs/quran/most_recent/most_recent_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../core/colors/app_color.dart';
import '../../../../../core/images/app_image.dart';
import '../quran_sources.dart';

class MostRecentDesign extends StatefulWidget {
  @override
  State<MostRecentDesign> createState() => _MostRecentDesignState();
}

class _MostRecentDesignState extends State<MostRecentDesign> {
late MostRecentProvider mostRecentProvider;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      mostRecentProvider.readMostRecentList();
    },);

  }


  @override
  Widget build(BuildContext context) {
     mostRecentProvider = Provider.of<MostRecentProvider>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Visibility(
            visible: mostRecentProvider.mostRecentList.isNotEmpty,
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
                        QuranResources.englishQuranResources[mostRecentProvider.mostRecentList[index]],
            
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        QuranResources.arabicQuranResources[mostRecentProvider.mostRecentList[index]],
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        QuranResources.ayaNumber[mostRecentProvider.mostRecentList[index]],
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
        itemCount: mostRecentProvider.mostRecentList.length,
      ),
    );
  }
}
