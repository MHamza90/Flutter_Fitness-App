import 'package:fitness_app/lib/components/button.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/profile%20screens/uploadphoto.dart';
import 'package:fitness_app/lib/screens/profile%20screens/utils_profile/utils_profile.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

class GoalsScreens extends StatefulWidget {
  const GoalsScreens({super.key});

  @override
  State<GoalsScreens> createState() => _GoalsScreensState();
}

class _GoalsScreensState extends State<GoalsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(
          vertical: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonback(context),
                  boldtext(Ccolor.textwhite, 25, 'What is your goal ?'),
                  const SizedBox.shrink()
                ],
              ),
              vertical(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: mediumtext(Ccolor.texthint, 14,
                    'It will help us to choose a best program for you',
                    center: true),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.71,
                  child: const GoalsScreen()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child:
                    buttonglow(boldtext(Ccolor.textwhite, 18, 'Continue'), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UploadPhotoSCreen()));
                }, context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
