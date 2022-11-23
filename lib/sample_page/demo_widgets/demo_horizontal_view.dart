import 'package:flutter/material.dart';

class DemoHorizontalView extends StatelessWidget {
  const DemoHorizontalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
       const Center(child: const Text("All Categories",style: TextStyle(fontSize: 20),)),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 175,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {},
                  child:  Card( // with Card
                    elevation: 10.0,
                    shape:const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                        side: BorderSide(width: 5,color: Colors.white70)),
                    clipBehavior: Clip.antiAlias, // with Card
                    child: Image.asset("assets/images/home_caraousel.png"),
                  ),);
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 175,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child:  Card( // with Card
                  elevation: 10.0,
                  shape:const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      side: BorderSide(width: 5,color: Colors.white70)),
                  clipBehavior: Clip.antiAlias, // with Card
                  child: Image.asset("assets/images/home_caraousel.png"),
                ),);
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 175,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child:  Card( // with Card
                  elevation: 10.0,
                  shape:const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      side: BorderSide(width: 5,color: Colors.white70)),
                  clipBehavior: Clip.antiAlias, // with Card
                  child: Image.asset("assets/images/home_caraousel.png"),
                ),);
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
