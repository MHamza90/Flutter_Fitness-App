import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/screens/main_screens/activitytracker/activitytracker.dart';
import 'package:fitness_app/lib/screens/main_screens/homepage.dart';
import 'package:fitness_app/lib/screens/main_screens/profilepage/profilemain.dart';
import 'package:fitness_app/lib/screens/main_screens/workout_tracker/workout_tracker_main.dart';
import 'package:flutter/material.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  List pages = [
    const HomePageScreen(),
    const ActivityTrackerScreen(),
    const WorkoutTrackerScreen(),
    const HomePageScreen(),
    ProfilePageScreen()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          color: Colors.black,
          child: Row(
            children: [
              card_nav(IMAGES.NAV_HOME, () {
                setState(() {
                  index = 0;
                });
              }),
              card_nav(IMAGES.NAV_ACTIVITY, () {
                setState(() {
                  index = 1;
                });
              }),
              card_nav(IMAGES.NAV_MAIN, () {
                setState(() {
                  index = 2;
                });
              }),
              card_nav(IMAGES.NAV_CAMERA, () {
                setState(() {
                  index = 3;
                });
              }),
              card_nav(IMAGES.NAV_PROFILE, () {
                setState(() {
                  index = 4;
                });
              }),
            ],
          ),
        ),
      ),
      body: pages[index],
    );
  }

  Widget card_nav(String img, VoidCallback ontap) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: Center(child: Image.asset(img)),
      ),
    );
  }
}
