import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

final trendingItemWidthMultiplier = 0.27;

class SellerCard extends StatelessWidget {
  final String backgroundImage;
  final String profileImage;
  final String sellerName;
  const SellerCard({
    Key? key,
    required this.backgroundImage,
    required this.profileImage,
    required this.sellerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, screenSize) {
      return Stack(
        children: [
          Container(
            height: screenSize.height * trendingItemHeightMultiplier,
            width: screenSize.width * trendingItemWidthMultiplier,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(backgroundImage),
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 4,
            child: CircleImage(imageUrl: profileImage),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.27,
              decoration: BoxDecoration(
                color: Color.fromRGBO(153, 153, 153, 0.6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                sellerName,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      );
    });
  }
}
