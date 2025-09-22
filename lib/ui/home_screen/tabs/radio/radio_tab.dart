import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home_screen/tabs/radio/radio_palyer_section.dart';

import '../../../../core/colors/app_color.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: const Color(0x80202020),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Radio',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColor.white,
                  fontSize: 16,
                  backgroundColor: Colors.transparent,
                ),
              ),
              Text(
                'Reciters',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColor.white,
                  fontSize: 16,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => const RadioPlayerSection(),
            itemCount: 30,
          ),
        ),
      ],
    );
  }
}
