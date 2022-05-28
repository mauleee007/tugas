import 'package:dicoding_lesson/component/cars_card.dart';
import 'package:dicoding_lesson/constant.dart';
import 'package:dicoding_lesson/model/cars_model.dart';
import 'package:dicoding_lesson/screen/detailpage/detailpage.dart';
import 'package:dicoding_lesson/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(25),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
                ...List.generate(
                    carsModel.length,
                    (index) => CarsCard(
                          carsModel: carsModel[index],
                          index: index,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(index: index)));
                          },
                          isFullCard: true,
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
