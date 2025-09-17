import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/core/colors/app_color.dart';

class SuraDesignAndContent extends StatefulWidget {
  String ayaOfSura;

  SuraDesignAndContent({required this.ayaOfSura});

  @override
  State<SuraDesignAndContent> createState() => _SuraDesignAndContentState();
}

class _SuraDesignAndContentState extends State<SuraDesignAndContent> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      //M
      padding: EdgeInsets.symmetric(horizontal: width * 0.01),
      //M
      width: width * 0.91,
      //M
      height: height * 0.085,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.gold,
          width: 2,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        widget.ayaOfSura,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(color: AppColor.gold),
      ),
    );
  }
}

