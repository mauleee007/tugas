import 'package:flutter/material.dart';

import '../constant.dart';

AppBar buildAppbar({bool isTransparent = false, required String title}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : kPrimaryColor,
    elevation: 0,
    title: Text(title),
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: kIconColor,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: ClipOval(
            child: Icon(
          Icons.car_rental_sharp,
          color: kIconColor,
        )),
        onPressed: () {},
      )
    ],
  );
}
