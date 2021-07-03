import 'dart:convert';

import 'package:http/http.dart' show Client;

import '../models.dart/models.dart';

final String _root =
    'https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me';

class Repository {
  var _client = Client();

  Future<List<Seller>> fetchTrendingSellers() async {
    final url = Uri.parse("$_root&opt=trending_seller");
    final response = await _client.get(url);
    final data = json.decode(response.body) as List;
    return (data[0] as List).map((item) => Seller.fromJson(item)).toList();
  }

  Future<List<Product>> fetchTrendingProducts() async {
    final url = Uri.parse("$_root&opt=trendingProducts");
    final response = await _client.get(url);
    final data = json.decode(response.body) as List;
    return (data[0] as List).map((item) => Product.fromJson(item)).toList();
  }

  Future<List<Story>> fetchStories() async {
    final url = Uri.parse("$_root&opt=stories");
    final response = await _client.get(url);
    final data = json.decode(response.body) as List;
    return (data[0] as List).map((item) => Story.fromJson(item)).toList();
  }

  Future<List<Product>> fetchNewArrivals() async {
    final url = Uri.parse("$_root&opt=newArrivals");
    final response = await _client.get(url);
    final data = json.decode(response.body) as List;
    return (data[0] as List).map((item) => Product.fromJson(item)).toList();
  }

  Future<List<Seller>> fetchNewShops() async {
    final url = Uri.parse("$_root&opt=newShops");
    final response = await _client.get(url);
    final data = json.decode(response.body) as List;
    return (data[0] as List).map((item) => Seller.fromJson(item)).toList();
  }
}
