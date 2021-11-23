
import 'package:flutter/material.dart';
import 'package:orderfood/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: "Cambo meal",
            isActive: true,
            press: (){},
          ),
          CategoryItem(
            title: "Chicken",
            press: (){},
          ),
          CategoryItem(
            title: "Beverages",
            press: (){},
          ),
          CategoryItem(
            title: "Snacks & Sides",
            press: (){},
          ),
        ],
      ),
    );
  }
}

