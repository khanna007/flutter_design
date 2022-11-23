import 'package:flutter/material.dart';

class IllustrationTexture extends StatelessWidget {
  const IllustrationTexture(
      {Key? key, this.scale = 1, this.color, this.flipX = false, this.flipY = false, this.opacity})
      : super(key: key);
  final Color? color;
  final double scale;
  final bool flipX;
  final bool flipY;
  final Animation<double>? opacity;

  @override
  Widget build(BuildContext context) => Image.asset("assets/images/roller-2-black.png", fit: BoxFit.cover, color: color, opacity: opacity, cacheWidth: 1024);
}
