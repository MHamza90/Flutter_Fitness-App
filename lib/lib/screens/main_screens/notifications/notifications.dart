// ignore_for_file: non_constant_identifier_names

import 'package:fitness_app/lib/ClassModels/notification_cm.dart';
import 'package:fitness_app/lib/components/appbar.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Ccolor.textwhite,
      key: _key,
      appBar: APPbar(
        text: 'Notifications',
        globalKey: _key,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: notificationlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    card_notification(
                        notificationlist[index].img.toString(),
                        notificationlist[index].title.toString(),
                        notificationlist[index].subtitle.toString(),
                        context),
                    const Divider(
                      thickness: 2,
                    )
                  ],
                );
              },
            ),
          )),
    );
  }
}

Widget card_notification(String img, String title, String subtitle, context,
    {bool? edit}) {
  return ListTile(
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
    trailing: (edit == true)
        ? SizedBox(
            height: 30, child: buttonmulticolor(0.2, 'edit', () {}, context))
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
  );
}
