import 'package:fitness_app/lib/screens/get_started/eat_well_screen.dart';
import 'package:fitness_app/lib/screens/get_started/utils_get_started/circular_button.dart';
import 'package:fitness_app/lib/screens/userauth/signin.dart';
import 'package:flutter/material.dart';

import '../../components/assets.dart';
import '../../components/const_text.dart';
import '../../components/spacer.dart';

class ImproveSleepScreen extends StatelessWidget {
  const ImproveSleepScreen({super.key});

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
                    image: AssetImage(IMAGES.SLEEP), fit: BoxFit.fill)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldtext(Colors.black, 20, 'Improve Sleep \nQuality'),
                vertical(10),
                mediumtext(const Color(0xff7B6F72), 15,
                    '''Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning'''),
                const Spacer(),
                circularbutton(const SignInScreen(), 1.0, context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
