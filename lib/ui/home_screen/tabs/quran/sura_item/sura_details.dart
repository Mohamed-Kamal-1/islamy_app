import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/quran_resources.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/sura_item/sura_design_content.dart';
import 'package:islamy_app/utils/colors/app_color.dart';

import '../../../backgrounds_widgets/dark_Background_widget.dart';

class SuraDetails extends StatefulWidget {
  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  final String _surasPath = 'assets/suras/';

  List<String> ayatOfSura = [];

  @override
  Widget build(BuildContext context) {
    int suraIndex = ModalRoute.of(context)!.settings.arguments as int;

    if (ayatOfSura.isEmpty) {
      loadSuraContent(suraIndex);
    }
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          QuranResources.englishQuranResources[suraIndex],
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(color: AppColor.gold),
        ),
      ),

      body: DarkBackgroundWidget(
        child: Column(
          children: [
            //M
            SizedBox(height:18),
            Text(
              QuranResources.arabicQuranResources[suraIndex],
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: AppColor.gold),
            ),
            //M
            SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SuraDesignAndContent(
                    ayaOfSura: '[${index + 1}] ${ayatOfSura[index]}',
                  );
                },
                itemCount: ayatOfSura.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadSuraContent(int suraIndex) async {
    String content = await rootBundle.loadString(
      '$_surasPath${suraIndex + 1}.txt',
    );
    List<String> lines = content.trim().split('\n');
    ayatOfSura = lines;
    setState(() {});
  }
}
