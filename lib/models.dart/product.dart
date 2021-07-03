import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String slNo;
  final String productName;
  final String shortDetails;
  final String productDescription;
  final int availableStock;
  final int orderQty;
  final int salesQty;
  final int orderAmount;
  final int salesAmount;
  final int discountPercent;
  final int discountAmount;
  final double unitPrice;
  final String productImage;
  final String sellerName;
  final String sellerProfilePhoto;
  final String sellerCoverPhoto;
  final String ezShopName;
  final double defaultPushScore;
  final String myProductVarId;

  Product({
    required this.slNo,
    required this.productName,
    required this.shortDetails,
    required this.productDescription,
    required this.availableStock,
    required this.orderQty,
    required this.salesQty,
    required this.orderAmount,
    required this.salesAmount,
    required this.discountPercent,
    required this.discountAmount,
    required this.unitPrice,
    required this.productImage,
    required this.sellerName,
    required this.sellerProfilePhoto,
    required this.sellerCoverPhoto,
    required this.ezShopName,
    required this.defaultPushScore,
    required this.myProductVarId,
  });

  static Product fromJson(Map<String, dynamic> data) {
    return Product(
      slNo: data["slNo"],
      productName: data["productName"],
      shortDetails: data["shortDetails"],
      productDescription: data["productDescription"],
      availableStock: data["availableStock"],
      orderQty: data["orderQty"],
      salesQty: data["salesQty"],
      orderAmount: data["orderAmount"],
      salesAmount: data["salesAmount"],
      discountPercent: data["discountPercent"],
      discountAmount: data["discountAmount"],
      unitPrice: data["unitPrice"].toDouble(),
      productImage: data["productImage"],
      sellerName: data["sellerName"],
      sellerProfilePhoto: data["sellerProfilePhoto"],
      sellerCoverPhoto: data["sellerCoverPhoto"],
      ezShopName: data["ezShopName"],
      defaultPushScore: data["defaultPushScore"] is double
          ? data["defaultPushScore"]
          : data["defaultPushScore"].toDouble(),
      myProductVarId: data["myProductVarId"],
    );
  }

  @override
  List<Object?> get props => [
        slNo,
        productName,
        shortDetails,
        productDescription,
        availableStock,
        orderQty,
        salesQty,
        orderAmount,
        salesAmount,
        discountPercent,
        discountAmount,
        unitPrice,
        productImage,
        sellerName,
        sellerProfilePhoto,
        sellerCoverPhoto,
        ezShopName,
        defaultPushScore,
        myProductVarId,
      ];
}
