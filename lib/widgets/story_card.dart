import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class StoryCard extends StatelessWidget {
  final String profileImage;
  final String name;
  final String time;
  final String story;
  final String storyImage;
  final String price;
  final String availableStock;
  final String order;
  const StoryCard({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.time,
    required this.story,
    required this.storyImage,
    required this.price,
    required this.availableStock,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, screenSize) {
      return Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(0),
                leading: CircleImage(
                  imageUrl: profileImage,
                ),
                title: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                subtitle: Text(
                  time,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  story,
                ),
              ),
              CachedNetworkImage(
                height: screenSize.height * 0.22,
                width: screenSize.width,
                fit: BoxFit.fill,
                imageUrl: storyImage,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                      icon: Icons.card_giftcard,
                      title: price,
                    ),
                    IconText(
                      icon: Icons.menu,
                      title: availableStock,
                    ),
                    IconText(
                      icon: Icons.shopping_cart_outlined,
                      title: order,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
