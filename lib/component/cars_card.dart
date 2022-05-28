import 'package:dicoding_lesson/model/cars_model.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class CarsCard extends StatelessWidget {
  const CarsCard({
    Key? key,
    required this.carsModel,
    required this.press,
    this.isFullCard = false,
    this.index,
  }) : super(key: key);
  final CarsModel carsModel;
  final int? index;
  final GestureTapCallback press;
  final bool isFullCard;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(isFullCard ? 158 : 137),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: isFullCard ? 1.09 : 1.29,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(carsModel.images),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: getProportionateScreenWidth(isFullCard ? 158 : 137),
              padding:
                  EdgeInsets.all(getProportionateScreenWidth(kDefaultPadding)),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                boxShadow: [kDefaultShadow],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  carsModel.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isFullCard ? 17 : 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VerticalSpacing(of: 10),
                Text(
                  carsModel.price,
                  style: TextStyle(
                    fontSize: isFullCard ? 15 : 11,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
