import 'package:fitness_app/lib/components/appbar.dart';
import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/main_screens/activitytracker/activity_utils.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

import '../workout_tracker/workout_tracker_main.dart';
import '../workout_tracker/workout_utils/workout_tracker_utils.dart';

class ActivityTrackerScreen extends StatefulWidget {
  const ActivityTrackerScreen({super.key});

  @override
  State<ActivityTrackerScreen> createState() => _ActivityTrackerScreenState();
}

class _ActivityTrackerScreenState extends State<ActivityTrackerScreen> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: APPbar(text: 'Activity Tracker', globalKey: globalKey),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              card_activity_Today(context),
              vertical(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldtext(Ccolor.textblack, 20, 'Activity Progress'),
                  buttonmulticolor(0.3, '', () {}, context,
                      other: true,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          boldtext(Ccolor.textblack, 16, 'Weekly'),
                          horizental(10),
                          const Icon(Icons.keyboard_arrow_down_rounded),
                        ],
                      ))
                ],
              ),
              Image.asset('assets/images/weekly_graph.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldtext(Ccolor.textblack, 20, 'Latest Activity'),
                  mediumtext(Ccolor.texthint, 16, 'see more'),
                ],
              ),
              card_listtile_shadow(IMAGES.ICON_PROFILE, 'Drinking 300ml Water',
                  'About 3 minutes ago', context),
              vertical(10),
              card_listtile_shadow(IMAGES.ICON_PROFILE, 'Eat Snack (Fitbar)',
                  'About 10 minutes ago', context),
              vertical(10),
            ],
          ),
        ),
      ),
    );
  }
}
