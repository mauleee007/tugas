import 'package:dicoding_lesson/model/cars_model.dart';
import 'package:dicoding_lesson/screen/component/home_header.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';
import 'cars_banner.dart';
import 'list_company.dart';
import 'section_page.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            HomeHeader(),
            VerticalSpacing(),
            CarsBanner(),
            VerticalSpacing(),
            ListCompany(),
          ],
        ),
      ),
    );
  }
}
