import 'package:fitness_app/lib/screens/get_started/improve_sleep_Screen.dart';
import 'package:fitness_app/lib/screens/get_started/utils_get_started/circular_button.dart';
import 'package:flutter/material.dart';

import '../../components/assets.dart';
import '../../components/const_text.dart';
import '../../components/spacer.dart';

class EatWellScreen extends StatelessWidget {
  const EatWellScreen({super.key});

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
                    image: AssetImage(IMAGES.EAT_WELL), fit: BoxFit.fill)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldtext(Colors.black, 20, 'Eat Well'),
                vertical(10),
                mediumtext(const Color(0xff7B6F72), 15,
                    '''Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun'''),
                const Spacer(),
                circularbutton(const ImproveSleepScreen(), 0.75, context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
