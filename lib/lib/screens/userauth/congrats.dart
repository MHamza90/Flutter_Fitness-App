import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/profile%20screens/userinfo.dart';
import 'package:flutter/material.dart';

import 'utils_userauth/utils_user.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        child: Column(
          children: [
            vertical(60),
            Image.asset(IMAGES.CONGRATS),
            vertical(20),
            boldtext(Ccolor.bluelight, 25, 'Congrats!'),
            vertical(20),
            boldtext(Ccolor.textwhite, 25, 'Password reset succesful'),
            const Spacer(),
            Center(
                child: buttonmulticolor(0.4, 'Done', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserInfoScreen()));
            }, context)),
            vertical(40),
          ],
        ),
      ),
    );
  }
}
