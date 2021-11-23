import 'package:flutter/material.dart';
import 'package:orderfood/constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({
    Key key, this.title, this.isActive = false, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(
              title,
              style: isActive ? TextStyle(
                color: ksecondaryColor,
                fontWeight: FontWeight.bold,
              ) : TextStyle(
                fontSize: 12,
              ),
              
            ),
            if(isActive)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 22,
              height: 3,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
