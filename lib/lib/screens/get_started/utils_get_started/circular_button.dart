import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../components/color.dart';

Widget circularbutton(Widget child, double value, context) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          PageTransition(child: child, type: PageTransitionType.rightToLeft));
    },
    child: Align(
      alignment: Alignment.bottomRight,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: Stack(children: [
          SizedBox(
            width: 55,
            height: 55,
            child: CircularProgressIndicator(
              value: value,
              color: Ccolor.bluedark,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Ccolor.bluelight,
                  Ccolor.bluedark,
                ]),
              ),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: Colors.white,
              ),
            ),
          )
        ]),
      ),
    ),
  );
}
