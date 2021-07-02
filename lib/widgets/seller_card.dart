import 'package:flutter/material.dart';

import 'widgets.dart';

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
            height: screenSize.height * 0.18,
            width: screenSize.width * 0.27,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  backgroundImage,
                ),
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 4,
            child: CircleAvatar(
              backgroundImage: NetworkImage(profileImage),
            ),
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
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      );
    });
  }
}
