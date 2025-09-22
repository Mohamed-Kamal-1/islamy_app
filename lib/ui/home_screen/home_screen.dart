import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/ui/home_screen/tabs/hadeth/hadeth_tab.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/quran_tab.dart';
import 'package:islamy_app/ui/home_screen/tabs/radio/radio_tab.dart';
import 'package:islamy_app/ui/home_screen/tabs/sebha/sebha_tab.dart';
import 'package:islamy_app/ui/home_screen/tabs/time/time_tab.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/icons/app_icon.dart';
import 'package:islamy_app/core/images/app_image.dart';
import 'backgrounds_widgets/opacity_Background_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  final List<String> backgroundImages = const [
    AppImage.backgroundQuran,
    AppImage.backgroundHadeth,
    AppImage.backgroundSebha,
    AppImage.backgroundRadio,
    AppImage.backgroundTime,
  ];

  final List<Widget> tabs = [
    QuranTab(),
    const HadethTab(),
    SebhaTab(),
    const RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return opacityBackgroundWidget(
      backgroundImagePath: backgroundImages[selectIndex],
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(children: [Expanded(child: tabs[selectIndex])]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: (index) => setState(() => selectIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: backroundSelectedIcon(index: 0, iconName: AppIcon.ic_quran),
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
              icon: backroundSelectedIcon(index: 2, iconName: AppIcon.ic_sebha),
              label: "Sebha",
            ),
            BottomNavigationBarItem(
              icon: backroundSelectedIcon(index: 3, iconName: AppIcon.ic_radio),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              icon: backroundSelectedIcon(index: 4, iconName: AppIcon.ic_time),
              label: "Time",
            ),
          ],
        ),
      ),
    );
  }

  Widget backroundSelectedIcon({required int index, required String iconName}) {
    final width = MediaQuery.of(context).size.width;
    return selectIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(
              vertical: 6,
              horizontal: width * 0.04,
            ),
            decoration: BoxDecoration(
              color: AppColor.backgroundSelect,
              borderRadius: BorderRadius.circular(66),
            ),
            child: SvgPicture.asset(
              iconName,
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(
                AppColor.white,
                BlendMode.srcIn,
              ),
            ),
          )
        : SvgPicture.asset(
            iconName,
            width: 24,
            height: 24,
            colorFilter: const ColorFilter.mode(
              AppColor.black,
              BlendMode.srcIn,
            ),
          );
  }
}
