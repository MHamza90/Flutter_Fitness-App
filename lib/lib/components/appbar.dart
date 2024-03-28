// ignore_for_file: must_be_immutable

import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

class APPbar extends StatelessWidget implements PreferredSizeWidget {
  GlobalKey<ScaffoldState> globalKey;
  String text;
  bool? back;
  APPbar({super.key, required this.text, required this.globalKey, this.back});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonback(context,
                  width: 32, height: 32, color: const Color(0xffF7F8F8)),
              boldtext(Ccolor.textblack, 20, text),
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF7F8F8)),
                child: const Center(
                  child: Icon(Icons.more_horiz_rounded),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
