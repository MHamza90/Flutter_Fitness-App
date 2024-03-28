import 'package:fitness_app/lib/components/appbar.dart';
import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/main_screens/profilepage/profile_utils.dart';
import 'package:fitness_app/lib/screens/main_screens/workout_tracker/fullbody_workout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/const_text.dart';
import '../../userauth/utils_userauth/utils_user.dart';
import '../homeutils/home_utils.dart';
import 'workout_utils/workout_tracker_utils.dart';

class WorkoutTrackerScreen extends StatefulWidget {
  const WorkoutTrackerScreen({super.key});

  @override
  State<WorkoutTrackerScreen> createState() => _WorkoutTrackerScreenState();
}

class _WorkoutTrackerScreenState extends State<WorkoutTrackerScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final ScrollController controller = ScrollController();
  bool fullbody = false;
  bool uperbody = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _key,
      appBar: APPbar(
        text: 'Workout Tracker',
        globalKey: _key,
        back: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.42,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Ccolor.bluelight,
                Ccolor.bluelight,
                Ccolor.bluedark,
              ])),
            ),
            Positioned(
                top: 75,
                left: MediaQuery.of(context).size.width * 0.1,
                child: Image.asset(IMAGES.WORKOUT_TRACKER_GRAPH)),
            // SizedBox.expand(
            //   child: DraggableScrollableSheet(
            //     initialChildSize: 0.56,
            //     minChildSize: 0.56,
            //     maxChildSize: 1,
            //     builder: (context, scrollController) {
            //       return Container(
            //           color: Colors.green,
            //           child:
            //           ListView.builder(
            //             controller: scrollController,
            //             itemBuilder: (context, index) {
            //               return Column(
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.all(20.0),
            //                 child: card_TODAY_TARGET(
            //                     context, () {}, 'Daily Workout Schedule'),
            //               ),
            //             ],
            //           );
            //             },
            //             itemCount: 1,
            //           ),
            //           );
            //     },
            //   ),
            // ),
            DraggableScrollableSheet(
              initialChildSize: 0.56,
              minChildSize: 0.56,
              maxChildSize: 1.0,
              expand: true,
              builder: (context, scrollController) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 15,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Ccolor.texthint,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: card_TODAY_TARGET(
                              context, () {}, 'Daily Workout Schedule'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              boldtext(
                                  Ccolor.textblack, 20, 'Upcoming Workout'),
                              mediumtext(Ccolor.texthint, 16, 'see more'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: card_listtile_shadow(IMAGES.FULLBODY_WORKOUT,
                              'Fullbody Workout', 'Today, 03:00pm', context,
                              toggle: true, onChanged: (value) {
                            setState(() {
                              uperbody = value;
                            });
                          }, value: uperbody),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: card_listtile_shadow(IMAGES.FULLBODY_WORKOUT,
                              'Fullbody Workout', 'Today, 03:00pm', context,
                              toggle: true, onChanged: (value) {
                            setState(() {
                              fullbody = value;
                            });
                          }, value: fullbody),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          decoration: decor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              boldtext(Ccolor.textblack, 16,
                                  'What Do You Want to Train'),
                              vertical(20),
                              workout_styles(
                                  'Fullbody Workout',
                                  '11 Exercises | 32mins',
                                  IMAGES.ROPE_JUMPING, () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FUllbodyWorkoutScreen()));
                              }, context),
                              workout_styles(
                                  'Lowebody Workout',
                                  '12 Exercises | 40mins',
                                  IMAGES.DUBLE_WORKOUT, () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FUllbodyWorkoutScreen()));
                              }, context),
                              workout_styles(
                                  'AB Workout',
                                  '14 Exercises | 20mins',
                                  IMAGES.ABS_WORKOUT, () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FUllbodyWorkoutScreen()));
                              }, context),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
