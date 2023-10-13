import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:takehomeproject/models/nobel_prizess.dart';

class Api {
  static List<NobelPrize> nobelPrizes = [];

  static Future<List<NobelPrize>?> fetchNobelPrizes() async {
    const url = 'https://irfangul92.github.io/index.json';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body.toString())['nobelPrizes'];
      final result =
          data.map((e) => NobelPrize.fromJson(e)).toList().cast<NobelPrize>();
      nobelPrizes.addAll(result);
      return nobelPrizes;
    } 
    else {
      return [];
    }
  }
}