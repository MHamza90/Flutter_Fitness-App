import 'package:fitness_app/lib/components/button.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/profile%20screens/userinfo.dart';
import 'package:fitness_app/lib/screens/userauth/forgotpassword.dart';
import 'package:fitness_app/lib/screens/userauth/signup.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

import '../../components/assets.dart';
import '../../components/textdecor.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  bool showpass = true;
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
            SizedBox(
              height: 60,
              child: TextFormField(
                style: textfieldtextstyle,
                controller: email,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 25),
                    hintText: 'Email',
                    hintStyle: textfieldtextstyle,
                    prefixIcon: Image.asset(IMAGES.ICON_EMAIL),
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                      color: Ccolor.textwhite,
                      fontSize: 14,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            const Spacer(),
            buttonglow(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(IMAGES.ICON_LOGIN),
                    horizental(5),
                    boldtext(Ccolor.textwhite, 20, 'Login')
                  ],
                ), (() {
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
                mediumtext(Ccolor.textwhite, 14, "Don’t have an account yet?"),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: boldtext(const Color(0xffC58BF2), 14, "Register"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
