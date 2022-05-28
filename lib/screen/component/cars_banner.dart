import 'package:dicoding_lesson/component/cars_card.dart';
import 'package:dicoding_lesson/model/cars_model.dart';
import 'package:dicoding_lesson/screen/detailpage/detailpage.dart';
import 'package:dicoding_lesson/screen/griddata/grid_screen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';
import 'section_page.dart';

class CarsBanner extends StatelessWidget {
  const CarsBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionPage(
          title: "Hot Deals Offer!",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GridScreen(),
              ),
            );
          },
        ),
        VerticalSpacing(of: 10),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  carsModel.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(20)),
                        child: CarsCard(
                          carsModel: carsModel[index],
                          index: index,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(index: index)));
                          },
                        ),
                      ))
            ],
          ),
        ),
      ],
    );
  }
}
