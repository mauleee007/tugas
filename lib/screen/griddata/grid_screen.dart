import 'package:dicoding_lesson/component/app_bar.dart';
import 'package:flutter/material.dart';

import 'component/body.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: "Gigs Showroom", isTransparent: true),
      body: Body(),
    );
  }
}
