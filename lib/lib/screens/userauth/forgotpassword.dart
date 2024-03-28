import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/userauth/otpverification.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buttonback(context),
            vertical(20),
            boldtext(Ccolor.textwhite, 25, 'Forgot password?'),
            vertical(10),
            mediumtext(Ccolor.texthint, 16,
                'Select which contact details should \nwe use to reset your password'),
            vertical(25),
            card(true, context),
            vertical(25),
            card(false, context),
            const Spacer(),
            Center(
                child: buttonmulticolor(0.4, 'Next', () {
              Navigator.push(
                  context,
                  (MaterialPageRoute(
                      builder: (context) => OtpVerificationScreen())));
            }, context)),
            vertical(40)
          ],
        ),
      ),
    );
  }
}

Widget card(bool sms, context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 70,
    decoration: BoxDecoration(
        color: Ccolor.btnbgdark, borderRadius: BorderRadius.circular(15)),
    child: ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 5),
        child:
            Image.asset((sms) ? IMAGES.ICON_MESSAGE : IMAGES.ICON_EMAIL_FILLED),
      ),
      title: boldtext(Ccolor.texthint, 14, (sms) ? "Via sms" : 'Via email:'),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: boldtext(Ccolor.textwhite, 16,
            (sms) ? '****  ****  4358' : '******  @gmail.com'),
      ),
    ),
  );
}
