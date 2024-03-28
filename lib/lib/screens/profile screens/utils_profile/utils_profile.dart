import 'package:flutter/material.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  late PageController controller;
  List images = [
    "assets/images/card_goals_1.png",
    "assets/images/card_goals_2.png",
    "assets/images/card_goals_3.png"
  ];

  double currentpage = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(viewportFraction: 0.65, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: PageView.builder(
          controller: controller,
          onPageChanged: (value) {
            print(
                '-------------------------------------------------------------');
            print(value);
            setState(() {
              currentpage = value.toDouble();
            });
            print(
                '-------------------------------------------------------------');
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: (currentpage == index) ? 0 : 100,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: (currentpage == index) ? 500 : 300,
                    child: Image.asset(images[index]),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
