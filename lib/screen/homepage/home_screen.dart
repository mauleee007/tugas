import 'package:dicoding_lesson/component/app_bar.dart';
import 'package:dicoding_lesson/constant.dart';
import 'package:dicoding_lesson/screen/component/body_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppbar(isTransparent: true, title: ""),
      body: Body(),
      // bottomNavigationBar: CostumBottomNavbar(),
    );
  }
}
