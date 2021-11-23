import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderfood/components/category_list.dart';
import 'package:orderfood/components/discount_card.dart';
import 'package:orderfood/components/item_list.dart';
import 'package:orderfood/components/search_box.dart';
import 'package:orderfood/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ItemList(),
        DiscountCard(),
      ],
    );
  }
}
