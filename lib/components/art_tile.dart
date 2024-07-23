import 'package:ecommerce_flutter/models/art.dart';
import 'package:flutter/material.dart';

class ArtTile extends StatelessWidget {
  Art art;
  ArtTile({super.key, required this.art});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //Art pic
            Image.asset(art.imagePath)
            //description

            // price + details

            // add to cart button
          ],
        ));
  }
}
