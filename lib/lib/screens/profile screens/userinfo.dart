import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/button.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/profile%20screens/goals.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

import '../../components/textdecor.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  TextEditingController gender = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(IMAGES.DUMBLE_LIFTING),
              vertical(20),
              boldtext(Ccolor.textwhite, 25, 'Let’s complete your profile'),
              vertical(10),
              mediumtext(Ccolor.texthint, 12,
                  'It will help us to know more about you!'),
              vertical(15),
              textarea(IMAGES.ICON_GENDER, gender, 'Choose Gender'),
              textarea(IMAGES.ICON_CALENDAR, gender, 'Date of Birth'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: textarea(
                            IMAGES.ICON_WEIGHT, weight, 'Your Weight')),
                  ),
                  buttonmulticolor(0.1, 'KG', () {}, context),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: textarea(
                            IMAGES.ICON_HEIGHT, weight, 'Your Height')),
                  ),
                  buttonmulticolor(0.1, 'CM', () {}, context),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: buttonglow(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        boldtext(Ccolor.textwhite, 16, 'Next'),
                        horizental(10),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Ccolor.textwhite,
                        )
                      ],
                    ), (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoalsScreens()));
                }), context),
              ),
              vertical(30),
            ],
          ),
        ),
      ),
    );
  }

  Widget textarea(String img, TextEditingController controller, String hint) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        style: textfieldtextstyle,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 25),
            hintText: hint,
            hintStyle: textfieldtextstyle,
            prefixIcon: Image.asset(img),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Ccolor.textwhite)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Ccolor.textwhite)),
            fillColor: Ccolor.textwhite),
      ),
    );
  }
}
