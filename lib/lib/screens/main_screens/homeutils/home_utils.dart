// ignore_for_file: non_constant_identifier_names

import 'package:fitness_app/lib/screens/main_screens/notifications/notifications.dart';
import 'package:flutter/material.dart';

import '../../../components/assets.dart';
import '../../../components/button.dart';
import '../../../components/color.dart';
import '../../../components/const_text.dart';
import '../../../components/spacer.dart';
import '../../userauth/utils_userauth/utils_user.dart';

Widget card_theme(context) {
  return Row(
    children: [
      const Icon(Icons.swap_horizontal_circle),
      const Spacer(),
      buttonmulticolor(0.12, '', () {}, context,
          other: true, child: const Icon(Icons.search)),
      horizental(10),
      buttonmulticolor(0.12, '', () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => NotificationScreen()));
      }, context, other: true, child: Image.asset(IMAGES.ICON_NOTIFICATION)),
    ],
  );
}

Widget card_BMI(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 150,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(IMAGES.HOME_BANNER), fit: BoxFit.fill)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            boldtext(Ccolor.textwhite, 18, 'BMI (Body Mass Index)'),
            mediumtext(Ccolor.textwhite, 16, 'You have a normal weight'),
            buttonmulticolor(0.3, 'View More', () {}, context, purple: true)
          ],
        ),
        Image.asset(IMAGES.BANNER_PIE)
      ],
    ),
  );
}

Widget card_TODAY_TARGET(context, VoidCallback ontap, String title) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 60,
    padding: const EdgeInsets.symmetric(horizontal: 25),
    decoration: BoxDecoration(
        color: const Color(0xff9DCEFF).withOpacity(0.4),
        borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        mediumtext(Ccolor.textblack, 14, title),
        SizedBox(
            width: 100,
            height: 35,
            child: buttonglow(
                mediumtext(Ccolor.textwhite, 14, 'Check'), ontap, context))
      ],
    ),
  );
}
