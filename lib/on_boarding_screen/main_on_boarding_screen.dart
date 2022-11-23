import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:working_flow/on_boarding_screen/first_on_boarding_screen.dart';

import '../animations/wonder_illustration_config.dart';
import '../sample_page/demo_page.dart';

class MainOnBoardingScreen extends StatefulWidget {
  const MainOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<MainOnBoardingScreen> createState() => _MainOnBoardingScreenState();
}

class _MainOnBoardingScreenState extends State<MainOnBoardingScreen> {
  final controller = PageController( viewportFraction:1.1);
  bool showButtonStatus = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: 5,
            controller: controller,
            onPageChanged: (index) {
              if (index == 4) {
                setState(() {
                  showButtonStatus = true;
                });
              } else {
                setState(() {
                  showButtonStatus = false;
                });
              }
            },
            itemBuilder: (_, index) {
            return  FractionallySizedBox(
              widthFactor: 1 / .9,
              heightFactor: 1.1,
              child:pages[index % pages.length]
            );
            },
          ),
          showButtonStatus != true
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 5,
                    effect: const JumpingDotEffect(
                      dotColor: Colors.white,
                      activeDotColor: Colors.orangeAccent,
                      dotHeight: 16,
                      dotWidth: 16,
                      jumpScale: .7,
                      verticalOffset: 15,
                    ),
                  ),
                )
              : showButton()
        ],
      ),
    );
  }

  Widget showButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DemoPage()),
          );
        },
        child: Text("Good to go ->"),
      ),
    );
  }

  final pages = List.generate(
      5,
      (index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey.shade300,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: OnBoardingFirstScreen(
              config: WonderIllustrationConfig.bg(
                  enableAnims: false, shortMode: true),
            ),
          ));
}
