import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/userauth/congrats.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

import '../../components/assets.dart';
import '../../components/textdecor.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController cpass = TextEditingController();
  final TextEditingController pass = TextEditingController();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vertical(40),
            boldtext(Ccolor.textwhite, 30, 'Reset your \npassword here'),
            vertical(10),
            mediumtext(Ccolor.texthint, 14,
                'Select which contact details should \nwe use to reset your password'),
            vertical(50),
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
            SizedBox(
              height: 70,
              child: TextFormField(
                style: textfieldtextstyle,
                controller: cpass,
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
            const Spacer(),
            Center(
                child: buttonmulticolor(0.4, 'Next', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CongratsScreen()));
            }, context)),
            vertical(40),
          ],
        ),
      ),
    );
  }
}
