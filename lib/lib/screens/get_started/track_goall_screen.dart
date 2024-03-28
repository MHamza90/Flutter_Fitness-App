import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/get_started/eat_well_screen.dart';
import 'package:fitness_app/lib/screens/get_started/utils_get_started/circular_button.dart';
import 'package:flutter/material.dart';

import 'get_burn_screen.dart';

class TrackGoalScreen extends StatelessWidget {
  const TrackGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(IMAGES.TRACK_GOAL), fit: BoxFit.fill)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldtext(Colors.black, 20, 'Track Your Goal'),
                vertical(10),
                mediumtext(const Color(0xff7B6F72), 15,
                    '''Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals'''),
                const Spacer(),
                circularbutton(const GetBurnScreen(), 0.25, context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
