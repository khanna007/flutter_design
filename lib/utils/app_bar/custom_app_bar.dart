import 'package:flutter/material.dart';

import 'custom_toolbar_shape.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({super.key, required this.height});
  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.transparent,
        child: Stack(fit: StackFit.loose, children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: height,
              child:const CustomPaint(
                painter: CustomToolbarShape(lineColor:  Color(0xFF802119)),
              )),
          Align(
              alignment:const Alignment(0.0, 1.25),
              child: Container(
                  height: MediaQuery.of(context).size.height / 14.5,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20.0,
                            // shadow
                            spreadRadius: .5,
                            // set effect of extending the shadow
                            offset: Offset(
                              0.0,
                              5.0,
                            ),
                          )
                        ],
                      ),
                      child: TextField(
                          onSubmitted: (submittedText) {

                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon:const Icon(
                                Icons.search,
                                color: Colors.black38,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(color: Colors.white, width: 1),                                    borderRadius: BorderRadius.circular(25)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1),                               borderRadius:
                              BorderRadius.circular(25))))))),
          Align(
              alignment:const Alignment(0.9, 0.0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 13,
                  child: InkWell(
                    onTap: () {
                    },
                    child: const Icon(
                      Icons.local_mall,
                      color: Colors.black,
                    ),
                  ))),
          Align(
              alignment:const Alignment(-0.9, 0.0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 13,
                  child: InkWell(
                      onTap: () {
                      },
                      child:const Icon(
                        Icons.menu,
                        color: Colors.black,
                      )))),
        ])
    );
  }

  double get maxExtent => height;


  double get minExtent => height;

  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}