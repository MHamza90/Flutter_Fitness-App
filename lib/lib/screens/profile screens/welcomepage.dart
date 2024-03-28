import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/button.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/main_screens/main_page.dart';
import 'package:flutter/material.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
        child: Column(
          children: [
            Image.asset(IMAGES.WELCOME_PAGE),
            vertical(30),
            boldtext(Ccolor.textwhite, 20, 'Welcome, Amir'),
            vertical(10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 55,
              ),
              child: mediumtext(Ccolor.texthint, 14,
                  'You are all set now, let’s reach your goals together with us',
                  center: true),
            ),
            const Spacer(),
            buttonglow(boldtext(Ccolor.textwhite, 18, 'Go to Home'), () {
              Navigator.push(
                  context,
                  (MaterialPageRoute(
                      builder: (context) => const MainPageScreen())));
            }, context)
          ],
        ),
      ),
    );
  }
}
