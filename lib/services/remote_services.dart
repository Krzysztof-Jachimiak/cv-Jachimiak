import 'package:animation_routes_riverpod_divizion/model/products_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fethProduct() async {
    var response = await client.get(
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline");
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
//cath errors
      return null;
    }
  }
}
