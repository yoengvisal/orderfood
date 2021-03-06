import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar detailsAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/share.svg'),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/more.svg'),
      ),
    ],
  );
}
