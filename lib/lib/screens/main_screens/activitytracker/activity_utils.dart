// ignore_for_file: non_constant_identifier_names

import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:flutter/material.dart';

import '../../../components/assets.dart';
import '../../userauth/utils_userauth/utils_user.dart';

card_activity_Today(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(10),
    height: 155,
    decoration: BoxDecoration(
      color: const Color(0xff9DCEFF).withOpacity(0.4),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            boldtext(Ccolor.textblack, 20, 'Today Target'),
            buttonmulticolor(0.15, '', () {}, context,
                other: true,
                child: Icon(
                  Icons.add,
                  color: Ccolor.textwhite,
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            card_container(IMAGES.ICON_GLASS, '8L', 'Water Intake', context),
            card_container(IMAGES.ICON_BOOTS, '2400', 'Foot Steps', context),
          ],
        )
      ],
    ),
  );
}

Widget card_container(String img, String title, String subtitle, context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.4,
    height: 70,
    decoration: BoxDecoration(
      color: Ccolor.textwhite,
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SizedBox(width: 25, child: Image.asset(img)),
      ),
      title: boldtext(Ccolor.bluedark, 16, title),
      subtitle: mediumtext(Ccolor.texthint, 13, subtitle),
    ),
  );
}
