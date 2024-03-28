import 'package:fitness_app/lib/components/assets.dart';
import 'package:fitness_app/lib/screens/main_screens/workout_tracker/jumping_jack.dart';
import 'package:flutter/cupertino.dart';

class FullBody_ProuductCM {
  String? img;
  String? name;
  FullBody_ProuductCM({this.img, this.name});
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

List<FullBody_ProuductCM> fullbodyproductlist = [
  FullBody_ProuductCM(img: IMAGES.FULLBODY_BARBELL, name: 'Barbell'),
  FullBody_ProuductCM(img: IMAGES.FULLBODY_SKIPING_ROPE, name: 'Skipping Rope'),
  FullBody_ProuductCM(img: IMAGES.FULLBODY_BOTTLE, name: 'Bottle 1 Litter'),
];

class fullbody_exercosesCM {
  String? img;
  String? title;
  String? subtitle;
  Widget nextpage;
  fullbody_exercosesCM(
      {this.img, this.title, this.subtitle, required this.nextpage});
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

List<fullbody_exercosesCM> exerciselist = [
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE1,
      title: 'Warm Up',
      subtitle: '05:00',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE2,
      title: 'Jumping Jack',
      subtitle: '12x',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE3,
      title: 'Skipping',
      subtitle: '15x',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE4,
      title: 'Squats',
      subtitle: '20x',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE5,
      title: 'Arm Raises',
      subtitle: '00:53',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE6,
      title: 'Rest and Drink',
      subtitle: '02:00',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE6,
      title: 'Rest and Drink',
      subtitle: '02:00',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE7,
      title: 'Incline Push-Ups',
      subtitle: '12x',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE8,
      title: 'Push-Ups',
      subtitle: '15x',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE9,
      title: 'Skipping',
      subtitle: '20x',
      nextpage: JumpingJackScreen()),
  fullbody_exercosesCM(
      img: IMAGES.FULLBODY_EXERXISE10,
      title: 'Cobra Stretch',
      subtitle: '20x',
      nextpage: JumpingJackScreen()),
];
