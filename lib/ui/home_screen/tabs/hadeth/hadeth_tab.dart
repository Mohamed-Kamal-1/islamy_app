import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ui/home_screen/tabs/hadeth/hadeth_source.dart';
import 'package:islamy_app/core/colors/app_color.dart';
import 'package:islamy_app/core/images/app_image.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  String filePath = 'assets/hadeth/AllHadeeth.txt';
  final CarouselController controller = CarouselController();
  List<HadethSource> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    if (allHadeth.isEmpty) {
      loadHadethContent();
    }

    return allHadeth.isEmpty
        ? const Center(child: CircularProgressIndicator(color: AppColor.gold))
        : CarouselView.weighted(
      controller: controller,
      shrinkExtent: double.infinity,
      itemSnapping: true,
      flexWeights: const <int>[1, 8, 1],
      children: allHadeth.map((HadethSource hadethSource) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 15),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.gold,
            image: const DecorationImage(
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
                    hadethSource.content,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 16, color: AppColor.black),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  void loadHadethContent() async {
    String fileContent = await rootBundle.loadString(filePath);
    List<String> hadethContentList = fileContent.trim().split('#');

    for (final singleHadethContent in hadethContentList) {
      final trimmedContent = singleHadethContent.trim();
      final indexOfLine = trimmedContent.indexOf('\n');
      if (indexOfLine == -1) return;

      final title = trimmedContent.substring(0, indexOfLine);
      final content = trimmedContent.substring(indexOfLine + 1);

      allHadeth.add(HadethSource(title: title, content: content));
      setState(() {});
    }
  }
}
