import 'package:flutter/material.dart';

class DemoGridView extends StatelessWidget {
  const DemoGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            childAspectRatio: 1 / 1,
          ),
          itemBuilder: (_, i) {
            return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Card( // with Card
                      elevation: 8.0,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias, // with Card
                      child: Image.asset("assets/images/onboarding_1.png"),
                    ),
                    // SizedBox(height: 5,),
                    // Text("Demo Products")
                  ],
                ));
          }),
    );
  }
}
