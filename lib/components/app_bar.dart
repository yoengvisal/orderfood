
  import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderfood/constants.dart';

AppBar homeAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      title: Center(
        child: RichText(
          text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "punk",
                  style: TextStyle(color: ksecondaryColor),
                ),
                TextSpan(
                  text: "Food",
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
              ]),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/notification.svg')),
      ],
    );
  }
