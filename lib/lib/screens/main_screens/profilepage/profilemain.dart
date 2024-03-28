import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/main_screens/notifications/notifications.dart';
import 'package:fitness_app/lib/screens/main_screens/profilepage/profile_utils.dart';
import 'package:flutter/material.dart';

import '../../../components/appbar.dart';

class ProfilePageScreen extends StatelessWidget {
  ProfilePageScreen({super.key});
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: APPbar(text: 'Activity Tracker', globalKey: globalKey),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card_notification(
                IMAGES.ICON_PROFILE, 'Amir', 'Lose a fat program', context,
                edit: true),
            vertical(20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card_healthdata('180cm', 'Height'),
                  card_healthdata('65kg', 'Weight'),
                  card_healthdata('22yo', 'Age'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: card_account(context),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: card_profile_notification(context),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: card_profile_others(context),
            ),
            vertical(20),
          ],
        ),
      ),
    );
  }
}
