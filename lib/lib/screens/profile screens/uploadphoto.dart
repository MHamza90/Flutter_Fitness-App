import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/components/button.dart';
import 'package:fitness_app/lib/components/color.dart';
import 'package:fitness_app/lib/components/const_text.dart';
import 'package:fitness_app/lib/components/spacer.dart';
import 'package:fitness_app/lib/screens/profile%20screens/welcomepage.dart';
import 'package:flutter/material.dart';

class UploadPhotoSCreen extends StatefulWidget {
  const UploadPhotoSCreen({super.key});

  @override
  State<UploadPhotoSCreen> createState() => _UploadPhotoSCreenState();
}

class _UploadPhotoSCreenState extends State<UploadPhotoSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 100,
                height: 30,
                child: buttonglow(boldtext(Ccolor.textwhite, 14, 'Skip'), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePageScreen()));
                }, context),
              ),
            ),
            vertical(55),
            mediumtext(Ccolor.textwhite, 14, 'Hey Aamir'),
            vertical(15),
            boldtext(Ccolor.textwhite, 20, 'UPLOAD YOUR'),
            vertical(5),
            boldtext(Ccolor.textwhite, 20, 'PROFILE PICTURE'),
            vertical(20),
            InkWell(onTap: (() {}), child: Image.asset(IMAGES.PROFILE_UPLOAD)),
            vertical(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: buttonglow(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_upload_outlined,
                        color: Ccolor.textwhite,
                      ),
                      horizental(10),
                      boldtext(Ccolor.textwhite, 16, 'UPLOAD'),
                    ],
                  ), () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomePageScreen()));
              }, context),
            )
          ],
        ),
      ),
    );
  }
}
