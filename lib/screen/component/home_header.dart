import 'package:dicoding_lesson/screen/component/search_field.dart';
import 'package:dicoding_lesson/size_config.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(25)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/homebg.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: getProportionateScreenHeight(315),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(80)),
              Text(
                "Gigs Car",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(73),
                    fontWeight: FontWeight.bold,
                    color: kTextColor,
                    height: 0.9),
              ),
              Text(
                "Available for every sport car",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Positioned(
            bottom: getProportionateScreenWidth(-25),
            child: SearchField(),
          ),
        ],
      ),
    );
  }
}
