
import 'package:flutter/material.dart';
import 'package:orderfood/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitlePriceRating extends StatelessWidget {
  const TitlePriceRating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cheese Burger", style: Theme.of(context).textTheme.headline,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SmoothStarRating(
                      borderColor: kPrimaryColor,
                      rating: 4,
                    ),
                    SizedBox(width: 10,),
                    Text("24 viewers"),
                  ],
                ),
              ],
            ),
          ),
          ClipPath(
            clipper: PricerCliper(),
            child: Container(
              alignment: Alignment.topCenter,
              height: 66,
              width: 65,
              color: kPrimaryColor,
              child: Text(
                '\$15',
                style: Theme.of(context).textTheme.title.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();

    double ingoreHeight = 20;

    path.lineTo(0, size.height - ingoreHeight);
    path.lineTo(size.width / 2, size.width);
    path.lineTo(size.width, size.height - ingoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
