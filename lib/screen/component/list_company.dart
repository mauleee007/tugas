import 'package:dicoding_lesson/model/cars_model.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';
import 'section_page.dart';

class ListCompany extends StatelessWidget {
  const ListCompany({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionPage(title: "List Of Company", press: () {}),
        VerticalSpacing(
          of: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(
            getProportionateScreenWidth(24),
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                company.length,
                (index) => CompanyCard(
                  company: company[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    Key? key,
    required this.company,
  }) : super(key: key);
  final Company company;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            company.image,
            height: getProportionateScreenHeight(55),
            width: getProportionateScreenHeight(55),
            fit: BoxFit.cover,
          ),
        ),
        VerticalSpacing(
          of: 10,
        ),
        Text(
          company.name,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
