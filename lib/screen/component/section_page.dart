import 'package:dicoding_lesson/constant.dart';
import 'package:dicoding_lesson/size_config.dart';
import 'package:flutter/material.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(
          kDefaultPadding,
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          Spacer(),
          GestureDetector(
            child: Text(
              "See All",
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            onTap: press,
          ),
        ],
      ),
    );
  }
}
