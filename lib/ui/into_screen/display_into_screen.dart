import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/routes/app_routes.dart';
import 'package:islamy_app/ui/into_screen/fifth_screen.dart';
import 'package:islamy_app/ui/into_screen/first_screen.dart';
import 'package:islamy_app/ui/into_screen/fourth_screen.dart';
import 'package:islamy_app/ui/into_screen/second_screen.dart';
import 'package:islamy_app/ui/into_screen/third_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DisplayIntoScreen extends StatefulWidget {
  const DisplayIntoScreen({super.key});

  @override
  State<DisplayIntoScreen> createState() => _DisplayIntoScreenState();
}

class _DisplayIntoScreenState extends State<DisplayIntoScreen> {
  final PageController _controller = PageController();

  final List<Widget> listOfIntroScreen = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    const FourthScreen(),
    const FifthScreen(),
  ];

  int selectIndex = 0;
  String netPage = 'Next';

  void clickOnPreviousPage() {
    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInSine,
    );
  }

  void clickOnNextPage() {
    if (selectIndex == listOfIntroScreen.length - 1) {
      Navigator.pushReplacementNamed(context, AppRoutes.HomeScreen.route);
      return;
    }
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutSine,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          controller: _controller,
          physics: const BouncingScrollPhysics(),
          itemCount: listOfIntroScreen.length,
          onPageChanged: (newIndex) {
            selectIndex = newIndex;
            netPage = (newIndex == listOfIntroScreen.length - 1) ? 'Finish' : 'Next';
            setState(() {});
          },
          itemBuilder: (context, index) {
            return listOfIntroScreen[index];
          },
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: MediaQuery.of(context).size.height * 0.045,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: clickOnPreviousPage,
                child: Text(
                  'Back',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColor.gold),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: listOfIntroScreen.length,
                effect: WormEffect(
                  activeDotColor: AppColor.gold,
                  dotColor: AppColor.gray,
                ),
              ),
              GestureDetector(
                onTap: clickOnNextPage,
                child: Text(
                  netPage,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColor.gold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
