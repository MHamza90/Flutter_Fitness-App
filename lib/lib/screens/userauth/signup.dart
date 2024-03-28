import 'package:fitness_app/lib/components/button.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/profile%20screens/userinfo.dart';
import 'package:fitness_app/lib/screens/userauth/signin.dart';
import 'package:fitness_app/lib/screens/userauth/signup.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

import '../../components/assets.dart';
import '../../components/textdecor.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController fname = TextEditingController();
  final TextEditingController lname = TextEditingController();
  bool showpass = true;
  bool tick = false;
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
            mediumtext(Ccolor.textwhite, 16, 'Hey There'),
            vertical(5),
            boldtext(Ccolor.textwhite, 22, 'Welcome Back'),
            vertical(15),
            textarea(IMAGES.ICON_PERSON, fname, 'First Name'),
            textarea(IMAGES.ICON_PERSON, lname, 'Last Name'),
            textarea(IMAGES.ICON_EMAIL, email, 'Email'),
            SizedBox(
              height: 70,
              child: TextFormField(
                style: textfieldtextstyle,
                controller: pass,
                obscureText: showpass,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 25),
                    hintText: 'Password',
                    hintStyle: textfieldtextstyle,
                    prefixIcon: Image.asset(IMAGES.ICON_LOCK),
                    suffixIcon: InkWell(
                      onTap: (() {
                        setState(() {
                          showpass = !showpass;
                        });
                      }),
                      child: Icon(
                        (showpass)
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off_outlined,
                        color: Ccolor.texthint,
                      ),
                    ),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Ccolor.textwhite)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Ccolor.textwhite)),
                    fillColor: Ccolor.textwhite),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      tick = !tick;
                    });
                  },
                  child: (tick)
                      ? Icon(
                          Icons.check_box,
                          color: Ccolor.bluedark,
                        )
                      : Icon(
                          Icons.check_box_outline_blank,
                          color: Ccolor.textwhite,
                        ),
                ),
                horizental(8),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Wrap(
                    children: [
                      mediumtext(Ccolor.textwhite, 14,
                          'By continuing you accept our '),
                      Text(
                        ' Privacy Policy ',
                        style: TextStyle(
                            color: Ccolor.textwhite,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                      mediumtext(Ccolor.textwhite, 14, ' and '),
                      Text(
                        ' Term of Use ',
                        style: TextStyle(
                            color: Ccolor.textwhite,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            buttonglow(
                Center(child: boldtext(Ccolor.textwhite, 20, 'Register')), (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserInfoScreen()));
            }), context),
            vertical(20),
            mediumtext(Ccolor.textwhite, 14, 'or Continue with'),
            vertical(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsocial(IMAGES.ICON_FACEBOOK, 'Facebook', context),
                buttonsocial(IMAGES.ICON_GOOGLE, 'Google', context),
              ],
            ),
            vertical(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mediumtext(Ccolor.textwhite, 14, "Already have an account?"),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: boldtext(const Color(0xffC58BF2), 14, "Login"),
                  ),
                ),
              ],
            )
          ],
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
