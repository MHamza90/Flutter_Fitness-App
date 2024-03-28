import 'package:fitness_app/lib/screens/get_started/eat_well_screen.dart';
import 'package:fitness_app/lib/screens/get_started/utils_get_started/circular_button.dart';
import 'package:flutter/material.dart';

import '../../components/assets.dart';
import '../../components/const_text.dart';
import '../../components/spacer.dart';

class GetBurnScreen extends StatelessWidget {
  const GetBurnScreen({super.key});

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
                    image: AssetImage(IMAGES.GET_BURN), fit: BoxFit.fill)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldtext(Colors.black, 20, 'Get Burn'),
                vertical(10),
                mediumtext(const Color(0xff7B6F72), 15,
                    '''Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever'''),
                const Spacer(),
                circularbutton(const EatWellScreen(), 0.5, context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
