import 'package:flutter/material.dart';

import '../animations/fade_color_transition.dart';
import '../animations/paint_textures.dart';
import '../animations/wonder_hero.dart';
import '../animations/wonder_illustration_builder.dart';
import '../animations/wonder_illustration_config.dart';

class OnBoardingFirstScreen extends StatelessWidget {
  OnBoardingFirstScreen({Key? key, required this.config}) : super(key: key);
  final WonderIllustrationConfig config;

  final fgColor = const Color(0xFF802119);
  final bgColor = const Color(0xFFC96454);
  @override
  Widget build(BuildContext context) {
    return WonderIllustrationBuilder(
      config: config,
      bgBuilder: _buildBg,
      mgBuilder: _buildMg,
      fgBuilder: _buildFg,
    );
  }

  List<Widget> _buildBg(BuildContext context, Animation<double> anim) {
    final curvedAnim = Curves.easeOut.transform(anim.value);
    return [
      // Bg color
      FadeColorTransition(color: fgColor, animation: anim),
      Positioned.fill(
        child: IllustrationTexture(
          flipY: true,
          opacity: anim.drive(Tween(begin: 0, end: 1)),
          color: bgColor,
        )
      ),
      Container(
        margin: const EdgeInsets.only(top: 30, right: 10),
        child: Align(
          alignment: Alignment.topRight,
          child: FractionalTranslation(
            translation: Offset(-.2 + curvedAnim * .2, .4 - curvedAnim * .2),
            child: WonderHero(config, 'taj-sun',
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/aboutImage.png',
                  ),
                  radius: 70,
                )),
          ),
        ),
      )
    ];
  }

  List<Widget> _buildMg(BuildContext context, Animation<double> anim) {
    return [
      Transform.scale(
        scale: 1 + config.zoom * .1,
        child: Align(
          alignment: Alignment(0, config.shortMode ? 0 : -.15),
          child: FractionallySizedBox(
            widthFactor: config.shortMode ? 1 : 1.7,
            child: Stack(
              children: [
                WonderHero(
                  config,
                  'taj-mg',
                  child: Image.asset('assets/images/onBoardingOne.png',
                      opacity: anim, fit: BoxFit.cover),
                ),
                if (!config.shortMode)
                  FractionalTranslation(
                    translation: Offset(0, 1.33),
                    child: Image.asset('assets/images/onBoardingOne.png',
                        opacity: anim, fit: BoxFit.cover),
                  ),
              ],
            ),
          ),
        ),
      )
    ];
  }

  List<Widget> _buildFg(BuildContext context, Animation<double> anim) {
    final curvedAnim = Curves.easeOut.transform(anim.value);
    return [
      Transform.scale(
        scale: 1 + config.zoom * .2,
        child: Stack(
          children: [
            FractionalTranslation(
              translation: Offset(-.2 * (1 - curvedAnim), 0),
              child: BottomLeft(
                child: FractionallySizedBox(
                  heightFactor: .6,
                  child: FractionalTranslation(
                    translation: Offset(-.4, -.04),
                    child: Image.asset('assets/images/empty_bg.png',
                        opacity: anim, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            FractionalTranslation(
              translation: Offset(.2 * (1 - curvedAnim), 0),
              child: BottomRight(
                child: FractionallySizedBox(
                  heightFactor: .6,
                  child: FractionalTranslation(
                    translation: Offset(.4, -.04),
                    child: Image.asset('assets/images/empty_bg.png',
                        opacity: anim, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ];
  }
}

class BottomLeft extends Align {
  const BottomLeft(
      {Key? key, double? widthFactor, double? heightFactor, Widget? child})
      : super(
          key: key,
          widthFactor: widthFactor,
          heightFactor: heightFactor,
          child: child,
          alignment: Alignment.bottomLeft,
        );
}

class BottomRight extends Align {
  const BottomRight(
      {Key? key, double? widthFactor, double? heightFactor, Widget? child})
      : super(
          key: key,
          widthFactor: widthFactor,
          heightFactor: heightFactor,
          child: child,
          alignment: Alignment.bottomRight,
        );
}
