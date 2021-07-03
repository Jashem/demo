import 'package:equatable/equatable.dart';

class Seller extends Equatable {
  final String slNo;
  final String sellerName;
  final String sellerProfilePhoto;
  final String sellerItemPhoto;
  final String ezShopName;
  final double defaultPushScore;
  final String? aboutCompany;
  final int allowCOD;
  final String? division;
  final String? subDivision;
  final String? city;
  final String? state;
  final int? zipCode;
  final String country;
  final String currencyCode;
  final int orderQty;
  final int orderAmount;
  final int salesQty;
  final int salesAmount;
  final int highestDiscountPercent;
  final String lastAddToCart;
  final String lastAddToCartThatSold;

  const Seller({
    required this.slNo,
    required this.sellerName,
    required this.sellerProfilePhoto,
    required this.sellerItemPhoto,
    required this.ezShopName,
    required this.defaultPushScore,
    this.aboutCompany,
    required this.allowCOD,
    this.division,
    this.subDivision,
    this.city,
    this.state,
    this.zipCode,
    required this.country,
    required this.currencyCode,
    required this.orderQty,
    required this.orderAmount,
    required this.salesQty,
    required this.salesAmount,
    required this.highestDiscountPercent,
    required this.lastAddToCart,
    required this.lastAddToCartThatSold,
  });

  static Seller fromJson(Map<String, dynamic> data) {
    return Seller(
      slNo: data["slNo"],
      sellerName: data["sellerName"],
      sellerProfilePhoto: data["sellerProfilePhoto"],
      sellerItemPhoto: data["sellerItemPhoto"],
      ezShopName: data["ezShopName"],
      defaultPushScore: data["defaultPushScore"] is double
          ? data["defaultPushScore"]
          : data["defaultPushScore"].toDouble(),
      aboutCompany: data["aboutCompany"],
      allowCOD: data["allowCOD"],
      division: data["division"],
      subDivision: data["subDivision"],
      city: data["city"],
      state: data["state"],
      zipCode: data["zipCode"],
      country: data["country"],
      currencyCode: data["currencyCode"],
      orderQty: data["orderQty"],
      orderAmount: data["orderAmount"],
      salesQty: data["salesQty"],
      salesAmount: data["salesAmount"],
      highestDiscountPercent: data["highestDiscountPercent"],
      lastAddToCart: data["lastAddToCart"],
      lastAddToCartThatSold: data["lastAddToCartThatSold"],
    );
  }

  @override
  List<Object?> get props => [
        slNo,
        sellerName,
        sellerProfilePhoto,
        sellerItemPhoto,
        ezShopName,
        defaultPushScore,
        aboutCompany,
        allowCOD,
        division,
        subDivision,
        city,
        state,
        zipCode,
        country,
        currencyCode,
        orderQty,
        orderAmount,
        salesQty,
        salesAmount,
        highestDiscountPercent,
        lastAddToCart,
        lastAddToCartThatSold,
      ];
}
