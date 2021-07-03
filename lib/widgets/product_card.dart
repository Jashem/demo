import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String details;
  final String image;
  const ProductCard({
    Key? key,
    required this.name,
    required this.details,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (_, screenSize) => Card(
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.134,
              width: screenSize.width * trendingItemWidthMultiplier,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: CachedNetworkImageProvider(image),
                ),
              ),
            ),
            Container(
              width: screenSize.width * trendingItemWidthMultiplier,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    details,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
