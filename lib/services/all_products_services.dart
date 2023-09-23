import 'package:fintech/model/products_model.dart';
import 'package:http/http.dart' as http;

class AllProducts {
  static var client = http.Client();
  String url = 'https://dummyjson.com/products';
  static Future<ProductsJson?> fetchProducts() async {
    final response =
        await client.get(Uri.parse('https://dummyjson.com/products'));
    if (response.statusCode == 200) {
      // if data came successfully then we need to get the data in frontend right
      var jsonString = response.body.toString();
      // entering the model all the data in getting the body pass the variable
      // online model give our to function to entering all the data inside the model
      final gettingProducts = productsJsonFromJson(jsonString);
      print(gettingProducts);
      return gettingProducts;
    } else {
      // show error message
    }
    return null;
  }
}
