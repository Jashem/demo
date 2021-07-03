import 'dart:convert';

import 'package:equatable/equatable.dart';

class Story extends Equatable {
  final String storyTime;
  final String story;
  final String storyType;
  final String storyImage;
  final List<String> storyAdditionalImages;
  final String promoImage;
  final int orderQty;
  final String lastAddToCart;
  final int availableStock;
  final String myId;
  final String ezShopName;
  final String? companyName;
  final String? companyLogo;
  final String? companyEmail;
  final String currencyCode;
  final int unitPrice;
  final int discountAmount;
  final int discountPercent;
  final String iMyID;
  final String shopName;
  final String shopLogo;
  final String shopLink;
  final String friendlyTimeDiff;
  final String slNo;

  Story({
    required this.storyTime,
    required this.story,
    required this.storyType,
    required this.storyImage,
    this.storyAdditionalImages = const [],
    required this.promoImage,
    required this.orderQty,
    required this.lastAddToCart,
    required this.availableStock,
    required this.myId,
    required this.ezShopName,
    this.companyName,
    this.companyLogo,
    this.companyEmail,
    required this.currencyCode,
    required this.unitPrice,
    required this.discountAmount,
    required this.discountPercent,
    required this.iMyID,
    required this.shopName,
    required this.shopLogo,
    required this.shopLink,
    required this.friendlyTimeDiff,
    required this.slNo,
  });

  static Story fromJson(Map<String, dynamic> data) {
    return Story(
      storyTime: data["storyTime"],
      story: data["story"],
      storyType: data["storyType"],
      storyImage: data["storyImage"],
      storyAdditionalImages: data["storyAdditionalImages"] == null
          ? []
          : (jsonDecode(data["storyAdditionalImages"]) as List).cast<String>(),
      promoImage: data["promoImage"],
      orderQty: data["orderQty"],
      lastAddToCart: data["lastAddToCart"],
      availableStock: data["availableStock"],
      myId: data["myId"],
      ezShopName: data["ezShopName"],
      currencyCode: data["currencyCode"],
      unitPrice: data["unitPrice"],
      discountAmount: data["discountAmount"],
      discountPercent: data["discountPercent"],
      iMyID: data["iMyID"],
      shopName: data["shopName"],
      shopLogo: data["shopLogo"],
      shopLink: data["shopLink"],
      friendlyTimeDiff: data["friendlyTimeDiff"],
      slNo: data["slNo"],
    );
  }

  @override
  List<Object?> get props => [
        storyTime,
        story,
        storyType,
        storyImage,
        storyAdditionalImages,
        promoImage,
        orderQty,
        lastAddToCart,
        availableStock,
        myId,
        ezShopName,
        companyName,
        companyLogo,
        companyEmail,
        currencyCode,
        unitPrice,
        discountAmount,
        discountPercent,
        iMyID,
        shopName,
        shopLogo,
        shopLink,
        friendlyTimeDiff,
        slNo,
      ];
}
