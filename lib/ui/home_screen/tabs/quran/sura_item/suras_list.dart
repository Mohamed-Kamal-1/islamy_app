import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/quran_sources.dart';

import '../../../../../core/colors/app_color.dart';
import '../../../../../core/images/app_image.dart';

class SurasList extends StatelessWidget {
  final int index;
  const SurasList({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          width: MediaQuery.of(context).size.width * 0.12,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImage.suraNumber),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            '${index + 1}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColor.white,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(width: 24),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                QuranResources.englishQuranResources[index],
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10.01),
              Text(
                QuranResources.arabicQuranResources[index],
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: AppColor.white),
              ),
            ],
          ),
        ),
        const Spacer(),
        Text(
          QuranResources.arabicQuranResources[index],
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
