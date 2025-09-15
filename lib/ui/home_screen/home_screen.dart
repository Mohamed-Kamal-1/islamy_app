import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/ui/home_screen/tabs/hadeth/hadeth_tab.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/quran_tab.dart';
import 'package:islamy_app/ui/home_screen/tabs/radio/radio_tab.dart';
import 'package:islamy_app/ui/home_screen/tabs/sebha/sebha_tab.dart';
import 'package:islamy_app/ui/home_screen/tabs/time/time_tab.dart';
import 'package:islamy_app/utils/colors/app_color.dart';
import 'package:islamy_app/utils/icons/app_icon.dart';
import 'package:islamy_app/utils/images/app_image.dart';
import 'backgrounds_widgets/opacity_Background_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;
  List<String> backgroundImages = [
    AppImage.backgroundQuran,
    AppImage.backgroundHadeth,
    AppImage.backgroundSebha,
    AppImage.backgroundRadio,
    AppImage.backgroundTime,
  ];
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return opacityBackgroundWidget(
      backgroundImagePath: backgroundImages[selectIndex],
      child: SafeArea(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.symmetric(
              horizontal: width * 0.04,
            ),
            child: Column(children: [Expanded(child: tabs[selectIndex])]),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectIndex,
            onTap: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: backroundSelectedIcon(
                  index: 0,
                  iconName: AppIcon.ic_quran,
                ),
                label: "Quran",
              ),

              BottomNavigationBarItem(
                icon: backroundSelectedIcon(
                  index: 1,
                  iconName: AppIcon.ic_hadeth,
                ),
                label: "Hadeth",
              ),

              BottomNavigationBarItem(
                icon: backroundSelectedIcon(
                  index: 2,
                  iconName: AppIcon.ic_sebha,
                ),
                label: "Sebha",
              ),

              BottomNavigationBarItem(
                icon: backroundSelectedIcon(
                  index: 3,
                  iconName: AppIcon.ic_radio,
                ),
                label: "Radio",
              ),

              BottomNavigationBarItem(
                icon: backroundSelectedIcon(
                  index: 4,
                  iconName: AppIcon.ic_time,
                ),
                label: "Time",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget backroundSelectedIcon({required int index, required String iconName}) {
    return selectIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(
              vertical: 6 ,
              horizontal:  MediaQuery.of(context).size.width * 0.04,
            ),
            decoration: BoxDecoration(
              color: AppColor.backgroundSelect,
              borderRadius: BorderRadius.circular(66),
            ),
            child: SvgPicture.asset(
              iconName,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColor.white, BlendMode.srcIn),
            ),
          )
        : SvgPicture.asset(
            iconName,
            colorFilter: ColorFilter.mode(AppColor.black, BlendMode.srcIn),
            width: 24,
            height: 24,
          );
  }
}
