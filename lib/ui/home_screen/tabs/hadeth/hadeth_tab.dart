import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ui/home_screen/tabs/hadeth/hadeth_source.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/images/app_image.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  String filePath = 'assets/hadeth/AllHadeeth.txt';
  final CarouselController controller = CarouselController(initialItem: 1);
  List<HadethSource> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    if (allHadeth.isEmpty) {
      loadHadethContent();
    }
    return Container(
      child: allHadeth.isEmpty
          ? Center(child: CircularProgressIndicator(color: AppColor.gold))
          : CarouselView.weighted(
              itemSnapping: true,
              flexWeights: const <int>[1, 8, 1],
              children: allHadeth.map((HadethSource hadethSource) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 48,
                    horizontal: 15,
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.gold,
                    image: DecorationImage(
                      image: AssetImage(AppImage.hadithBackground),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          hadethSource.title,
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Expanded(
                        flex: 6,
                        child: SingleChildScrollView(
                          child: Text(
                            textAlign: TextAlign.center,
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium?.copyWith(fontSize: 16,color: AppColor.black),
                            hadethSource.content,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
    );
  }

  void loadHadethContent() async {
    String fileContent = await rootBundle.loadString(filePath);
    List<String> hadethContentList = fileContent.split('#');

    for (int i = 0; i < hadethContentList.length; i++) {
      String singleHadethContent = hadethContentList[i].trim();
      int indexOfLine = singleHadethContent.indexOf('\n');
      String title = singleHadethContent.substring(0, indexOfLine);
      String content = singleHadethContent.substring(indexOfLine + 1);
      HadethSource hadethSource = HadethSource(title: title, content: content);
      allHadeth.add(hadethSource);
      setState(() {});
    }
  }
}
