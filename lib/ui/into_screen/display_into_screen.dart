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
  @override
  State<DisplayIntoScreen> createState() => _DisplayIntoScreenState();
}

class _DisplayIntoScreenState extends State<DisplayIntoScreen> {
  final _controller = PageController();

  List<Widget> listOfIntroScreen = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
    FifthScreen(),
  ];

  int selectIndex = 0;

  String netPage = 'Next';

  void clickOnPreviousPage() {
    _controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInSine,
    );
  }

  void clickOnNextPage() {
    if (selectIndex == listOfIntroScreen.length - 1) {
      Navigator.pushReplacementNamed(context, AppRoutes.HomeScreen.route);
    }
    _controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOutSine,
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          onPageChanged: (newIndex) {
            netPage = (newIndex == listOfIntroScreen.length - 1)
                ? netPage = 'Finish'
                : netPage = 'Next';
            setState(() {});
          },
          itemCount: listOfIntroScreen.length,
          itemBuilder: (context, index) {
            selectIndex = index;
            return listOfIntroScreen[index];
          },

          controller: _controller,
          physics: BouncingScrollPhysics(),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: MediaQuery.of(context).size.height * 0.045,
          ),
          // color: Colors.redAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: clickOnPreviousPage,
                child: Text(
                  'Back',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: AppColor.gold),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: WormEffect(
                  activeDotColor: AppColor.gold,
                  dotColor: AppColor.gray,
                ),
              ),
              GestureDetector(
                onTap: clickOnNextPage,
                child: Text(
                  netPage,
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: AppColor.gold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
