import 'package:flutter/material.dart';

import '../../../components/color.dart';
import '../../../components/const_text.dart';
import '../../../components/spacer.dart';

Widget buttonsocial(String img, String text, context) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: MediaQuery.of(context).size.width * 0.42,
      height: 50,
      decoration: BoxDecoration(
        color: Ccolor.btnbgdark,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img),
          horizental(10),
          boldtext(Ccolor.textwhite, 16, text)
        ],
      ),
    ),
  );
}

Widget buttonback(context, {double? width, double? height, Color? color}) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      width: width ?? 50,
      height: height ?? 50,
      decoration: BoxDecoration(
        color: color ?? Ccolor.back.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.arrow_back_ios_rounded,
        color: Ccolor.back,
      ),
    ),
  );
}

Widget buttonmulticolor(double width, String text, VoidCallback ontap, context,
    {bool? other, Widget? child, bool? purple}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      width: MediaQuery.of(context).size.width * width,
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: (purple == true)
                ? const [
                    Color(0xffEEA4CE),
                    Color(0xffEEA4CE),
                    Color(0xffC58BF2),
                  ]
                : const [
                    Color(0xff92A3FD),
                    Color(0xff92A3FD),
                    Color(0xffC58BF2),
                  ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child:
              (other == true) ? child : boldtext(Ccolor.textwhite, 16, text)),
    ),
  );
}
