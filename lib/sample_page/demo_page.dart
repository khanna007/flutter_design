import 'package:flutter/material.dart';

import '../utils/app_bar/custom_app_bar.dart';
import '../utils/bottom_bar/fancy_tab_bar.dart';
import 'demo_widgets/demo_grid_view.dart';
import 'demo_widgets/demo_horizontal_view.dart';



class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(height:MediaQuery.of(context).size.height * .15),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const FancyTabBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
             DemoGridView(),
            SizedBox(
              height: 30,
            ),
            DemoHorizontalView(),
          ],
        ),
      ),
    );
  }
}
