// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../ClassModels/fullbody_workout_cm.dart';
import '../../../../components/assets.dart';
import '../../../../components/color.dart';
import '../../../../components/const_text.dart';
import '../../../../components/spacer.dart';
import '../../../userauth/utils_userauth/utils_user.dart';
import '../../profilepage/profile_utils.dart';

Widget workout_styles(
    String title, String subtitle, String img, VoidCallback ontap, context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.symmetric(vertical: 15),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Ccolor.bluelight.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            boldtext(Ccolor.textblack, 14, title),
            vertical(10),
            mediumtext(Ccolor.texthint, 13, subtitle),
            vertical(20),
            SizedBox(
              height: 30,
              child: buttonmulticolor(0.25, 'view more', ontap, context),
            )
          ],
        ),
        Image.asset(img)
      ],
    ),
  );
}

Widget card_listtile_shadow(String img, String title, String subtitle, context,
    {bool? toggle, bool? value, final ValueChanged<bool>? onChanged}) {
  return Container(
    decoration: decor,
    child: ListTile(
      leading: Image.asset(img),
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Ccolor.textblack, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Ccolor.texthint, fontSize: 13),
      ),
      trailing: (toggle == true)
          ? Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                value: value ?? true,
                onChanged: onChanged,
                activeColor: const Color(0xffC58BF2),
              ))
          : Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: const Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Icon(
                  Icons.more_vert_rounded,
                  color: Ccolor.textblack,
                ),
              ),
            ),
    ),
  );
}

Widget card_fullbody_row(String title, String traing, IconData icon, context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: (traing == 'Beginner')
            ? const Color(0xffEEA4CE).withOpacity(0.3)
            : Ccolor.bluelight.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        Icon(icon),
        horizental(10),
        lighttext(Ccolor.texthint, 14, title),
        const Spacer(),
        lighttext(Ccolor.texthint, 13, traing),
        horizental(10),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 14,
        )
      ],
    ),
  );
}

Widget fullbody_products() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: fullbodyproductlist.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(fullbodyproductlist[index].img.toString()),
              vertical(10),
              boldtext(Ccolor.textblack, 14,
                  fullbodyproductlist[index].name.toString())
            ],
          ),
        );
      },
    ),
  );
}
