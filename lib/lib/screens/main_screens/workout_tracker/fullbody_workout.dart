import 'package:fitness_app/lib/components/appbar.dart';
import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/button.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/main_screens/profilepage/profile_utils.dart';
import 'package:flutter/material.dart';

import '../../../ClassModels/fullbody_workout_cm.dart';
import '../../../components/const_text.dart';
import '../homeutils/home_utils.dart';
import 'workout_utils/workout_tracker_utils.dart';

class FUllbodyWorkoutScreen extends StatefulWidget {
  const FUllbodyWorkoutScreen({super.key});

  @override
  State<FUllbodyWorkoutScreen> createState() => _FUllbodyWorkoutScreenState();
}

class _FUllbodyWorkoutScreenState extends State<FUllbodyWorkoutScreen> {
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
        text: '',
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
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Ccolor.bluelight,
                Ccolor.bluelight,
                Ccolor.bluedark,
              ])),
            ),
            Positioned(
                top: 20,
                left: MediaQuery.of(context).size.width * 0.1,
                child: Image.asset(IMAGES.FULLBODY_ROPE)),
            DraggableScrollableSheet(
              initialChildSize: 0.56,
              minChildSize: 0.56,
              maxChildSize: 1.0,
              expand: true,
              builder: (context, scrollController) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 60,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Ccolor.texthint,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                        vertical(20),
                        boldtext(Ccolor.textblack, 18, 'Fullbody Workout'),
                        mediumtext(Ccolor.texthint, 14,
                            '11 Exercises | 32mins | 320 Calories Burn'),
                        vertical(25),
                        card_fullbody_row('Schedule Workout', '5/27, 09:00 AM',
                            Icons.calendar_month_outlined, context),
                        vertical(25),
                        card_fullbody_row('Difficulity', 'Beginner',
                            Icons.unfold_less_sharp, context),
                        vertical(25),
                        boldtext(Ccolor.textblack, 18, "You'll Need"),
                        fullbody_products(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            boldtext(Ccolor.textblack, 18, 'Exercises'),
                            lighttext(Ccolor.textblack, 14, '3 Sets'),
                          ],
                        ),
                        vertical(15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            lighttext(Ccolor.textblack, 14, 'Set 1'),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: buttonglow(
                                    boldtext(
                                        Ccolor.textblack, 14, 'Start Workout'),
                                    () {},
                                    context))
                          ],
                        ),
                        ListView.builder(
                            controller: ScrollController(),
                            shrinkWrap: true,
                            itemCount: exerciselist.length,
                            itemBuilder: (context, index) {
                              return (index == 6)
                                  ? Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: mediumtext(
                                          Ccolor.texthint, 16, 'Sets 2'),
                                    )
                                  : InkWell(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  exerciselist[index]
                                                      .nextpage)),
                                      child: ListTile(
                                        leading: Image.asset(
                                            exerciselist[index].img.toString()),
                                        title: boldtext(
                                            Ccolor.textblack,
                                            14,
                                            exerciselist[index]
                                                .title
                                                .toString()),
                                        subtitle: mediumtext(
                                            Ccolor.texthint,
                                            13,
                                            exerciselist[index]
                                                .subtitle
                                                .toString()),
                                        trailing: const Icon(
                                            Icons.arrow_circle_right_outlined),
                                      ),
                                    );
                            }),
                        vertical(30),
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
