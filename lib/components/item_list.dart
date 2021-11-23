import 'package:flutter/material.dart';
import 'package:orderfood/components/item_card.dart';
import 'package:orderfood/details/detail_screen.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            svgSrc: 'assets/icons/burger_beer.svg',
            title: "Burger & beer",
            shopName: "macDonald`s",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: 'assets/icons/chinese_noodles.svg',
            title: "Chinese & Noodles",
            shopName: "Wendys",
            press: () {},
          ),
          ItemCard(
            svgSrc: 'assets/icons/burger_beer.svg',
            title: "Burger & beer",
            shopName: "macDonald`s",
            press: () {},
          ),
        ],
      ),
    );
  }
}
