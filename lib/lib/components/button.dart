import 'package:flutter/material.dart';

import 'color.dart';

Widget buttonglow(Widget child, VoidCallback ontap, context) {
  return InkWell(
    onTap: ontap,
    child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Ccolor.bluelight,
              Ccolor.bluedark,
            ]),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff92A3FD).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(50)),
        child: Center(child: child)),
  );
}
