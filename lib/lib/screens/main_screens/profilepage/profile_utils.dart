// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../components/color.dart';
import '../../../components/const_text.dart';

BoxDecoration decor = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ]);
Widget card_healthdata(String title, String subtitle) {
  return Container(
    width: 100,
    height: 65,
    decoration: decor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        mediumtext(Ccolor.bluelight, 16, title),
        mediumtext(Ccolor.texthint, 16, subtitle),
      ],
    ),
  );
}

Widget card_account(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(10),
    decoration: decor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        boldtext(Ccolor.textblack, 18, 'Account'),
        card_listtiel(Icons.person, 'Personal Data'),
        card_listtiel(Icons.text_snippet, 'Achievement'),
        card_listtiel(
            Icons.switch_access_shortcut_add_outlined, 'Activity History'),
        card_listtiel(Icons.insert_chart_outlined_outlined, 'Workout Progress'),
      ],
    ),
  );
}

Widget card_profile_notification(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(10),
    decoration: decor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        boldtext(Ccolor.textblack, 18, 'Notification'),
        card_listtiel(Icons.notifications, 'Pop-up Notification', notify: true),
      ],
    ),
  );
}

Widget card_profile_others(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(10),
    decoration: decor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        boldtext(Ccolor.textblack, 18, 'Account'),
        card_listtiel(Icons.email_rounded, 'Contact Us'),
        card_listtiel(Icons.verified_user_outlined, 'Privacy Policy'),
        card_listtiel(Icons.settings_outlined, 'Settings'),
      ],
    ),
  );
}

Widget card_listtiel(IconData icon, String title, {bool? notify}) {
  return ListTile(
    leading: Icon(
      icon,
      color: Ccolor.bluelight,
    ),
    title: mediumtext(Ccolor.textblack, 14, title),
    trailing: (notify == true)
        ? const Icon(
            Icons.toggle_off_outlined,
            size: 30,
          )
        : const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
          ),
  );
}
