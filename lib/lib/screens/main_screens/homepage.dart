import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/button.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/main_screens/homeutils/home_utils.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              title: mediumtext(Ccolor.texthint, 14, 'Welcome back'),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: boldtext(Ccolor.textblack, 18, 'Amir'),
              ),
              trailing: Image.asset(IMAGES.ICON_PROFILE),
            ),
            card_theme(context),
            vertical(10),
            card_BMI(context),
            vertical(15),
            card_TODAY_TARGET(context, () {}, 'Today Target'),
            vertical(15),
            Image.asset('assets/images/activity_status.png'),
            vertical(15),
            Image.asset('assets/images/workout_progress.png'),
            vertical(15),
            Image.asset('assets/images/workout_latest.png'),
            vertical(15),
          ],
        ),
      ),
    );
  }
}
