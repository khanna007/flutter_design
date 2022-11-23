import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<dynamic> imgList = [
  "assets/images/home_caraousel.png",
  "assets/images/home_caraousel.png",
  "assets/images/home_caraousel.png",
  "assets/images/home_caraousel.png",
  "assets/images/home_caraousel.png"
];

class DemoHorizontalView extends StatefulWidget {
  const DemoHorizontalView({Key? key}) : super(key: key);

  @override
  State<DemoHorizontalView> createState() => _DemoHorizontalViewState();
}

class _DemoHorizontalViewState extends State<DemoHorizontalView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Center(
            child: Text(
          "All Categories",
          style: TextStyle(fontSize: 20),
        )),
        const SizedBox(
          height: 20,
        ),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child:
                            Image.asset(item, fit: BoxFit.cover, width: 1000)),
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 20,
        ),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child:
                            Image.asset(item, fit: BoxFit.cover, width: 1000)),
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 20,
        ),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child:
                            Image.asset(item, fit: BoxFit.cover, width: 1000)),
                  ))
              .toList(),
        ),
      ],
    );
  }
}

List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'No. ${imgList.indexOf(item)} image',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ))
    .toList();
