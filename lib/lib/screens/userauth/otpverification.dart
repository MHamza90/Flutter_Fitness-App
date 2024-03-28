import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/userauth/resetpassword.dart';
import 'package:fitness_app/lib/screens/userauth/utils_userauth/utils_user.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  bool? mobile;
  OtpVerificationScreen({super.key, this.mobile});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _pin = TextEditingController();

  bool hasError = false;
  String currentText = "";

  final formKey = GlobalKey<FormState>();
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
              vertical(40),
              Image.asset(IMAGES.OTPBG),
              vertical(30),
              boldtext(const Color(0xffFFF500), 25, 'OTP Verification'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: mediumtext(
                    Ccolor.texthint,
                    14,
                    (widget.mobile == true)
                        ? 'We Will send you a one time password on this  Mobile Number'
                        : 'We Will send you a one time password on this  Email Address',
                    center: true),
              ),
              vertical(10),
              boldtext(
                  Ccolor.textwhite,
                  16,
                  (widget.mobile == true)
                      ? '+92 300 1234567'
                      : 'person123@email.com'),
              vertical(25),
              Form(
                key: formKey,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 30),
                    child: PinCodeTextField(
                      textStyle: TextStyle(color: Ccolor.textwhite),
                      backgroundColor: Colors.black,
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Ccolor.bluedark,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '*',
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      // validator: (v) {
                      //   if (v!.length < 3) {
                      //     return "I'm from validator";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      pinTheme: PinTheme(
                        inactiveFillColor: Colors.black,
                        inactiveColor: Colors.yellow,
                        selectedColor: Ccolor.bluedark,
                        selectedFillColor: Ccolor.texthint,
                        shape: PinCodeFieldShape.circle,
                        borderRadius: BorderRadius.circular(40),
                        fieldHeight: 45,
                        fieldWidth: 45,
                        activeColor: Ccolor.bluedark,
                        activeFillColor: Colors.black,
                      ),
                      cursorColor: Ccolor.textwhite,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      controller: _pin,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        debugPrint("Completed");
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) => NewPass()));
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        debugPrint(value);
                        setState(() {
                          currentText = value;
                        });
                        print(currentText);
                      },
                      beforeTextPaste: (text) {
                        debugPrint("Allowing to paste $text");
                        return true;
                      },
                    )),
              ),
              vertical(25),
              buttonmulticolor(0.4, 'Verify', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen()));
              }, context)
            ],
          ),
        ),
      ),
    );
  }
}
