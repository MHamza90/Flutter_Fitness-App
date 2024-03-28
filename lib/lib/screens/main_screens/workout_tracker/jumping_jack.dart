import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/main_screens/workout_tracker/workout_utils/myseprator.dart';
import 'package:flutter/material.dart';

import '../../../components/appbar.dart';

class JumpingJackScreen extends StatelessWidget {
  JumpingJackScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: APPbar(
        text: '',
        globalKey: _key,
        back: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(IMAGES.JUMPING_JACK)),
              vertical(15),
              boldtext(Ccolor.textblack, 16, 'Jumping Jack'),
              vertical(10),
              mediumtext(Ccolor.texthint, 16, 'Easy | 390 Calories Burn'),
              vertical(30),
              boldtext(Ccolor.textblack, 16, 'Description'),
              vertical(20),
              mediumtext(Ccolor.texthint, 13,
                  'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...'),
              vertical(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldtext(Ccolor.textblack, 16, 'How To Do It'),
                  mediumtext(Ccolor.texthint, 14, '4 Steps'),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.radio_button_checked_sharp,
                    color: Color(0xffEEA4CE),
                  ),
                  SizedBox(
                    height: 100,
                    child: MySeparator(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
