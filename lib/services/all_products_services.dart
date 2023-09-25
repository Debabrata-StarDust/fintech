// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart';
//
// import '../model/products_model.dart';
//
// List productList = [];
//
// class AllProducts {
//   //  var client = http.Client();
//   // String url = 'https://dummyjson.com/products';
//
//   // static Future<List<dynamic>?> fetchEvents() async {
//   //   var response = await client.get(
//   //     Uri.parse('https://dummyjson.com/products'),
//   //   );
//   //   if (response.statusCode == 200) {
//   //     var jsonResponse = jsonDecode(response.body);
//   //     print(response.body.toString());
//   //     print(jsonResponse);
//   //     return jsonResponse;
//   //   } else {
//   //     return null;
//   //   }
//   // }
//
//   // Future<Productjson?> fetchProducts() async {
//   //   var request =
//   //       http.Request('GET', Uri.parse('https://dummyjson.com/products'));
//   //   http.StreamedResponse response = await request.send();
//   //   var rr = "";
//   //   if (response.statusCode == 200) {
//   //     var data = jsonDecode(response.body.toString());
//   //     // rr = await response.stream.bytesToString();
//   //     print(rr);
//   //     for (Map<String, dynamic> i in rr) {
//   //       var getJsonProduct = Productjson.fromJson(rr);
//   //     }
//   //     return getJsonProduct;
//   //   } else {
//   //     return null;
//   //   }
//   // }
//   List<Map<String, dynamic>> productsData = [];
//   Future<List<Productjson>?> getAllProducts() async {
//     //isLoading.value = true;
//     try {
//       // final response = await get(Uri.parse("https://dummyjson.com/products"));
//       // if (response.statusCode == 200) {
//       //   // store the data in jsonList
//       //   final List<dynamic> jsonList = jsonDecode(response.body);
//       //   print(jsonList);
//       //   productList.value =
//       //       jsonList.map((json) => ProductsJson.fromJson(json)).toList();
//       // }
//       final response = await get(Uri.parse("https://dummyjson.com/products"));
//       var data = jsonDecode(response.body.toString());
//       print("Data is coming$data");
//       if (response.statusCode == 200) {
//         productsData = data;
//         for (Map<String, dynamic> i in data) {
//           productList.add(Productjson.fromJson(i));
//           print("product in map$productList");
//           print(i.toString());
//         }
//         return data;
//       } else {
//         debugPrint("Api Server not coming");
//       }
//     } catch (e) {
//       print(e.toString());
//     } finally {
//       // isLoading.value = false;
//     }
//   }
//
//   // Future<ProductsJson?> fetchProducts() async {
//   //   final response =
//   //       await client.get(Uri.parse('https://dummyjson.com/products'));
//   //   if (response.statusCode == 200) {
//   //     // if data came successfully then we need to get the data in frontend right
//   //     var jsonString = response.body.toString();
//   //     // entering the model all the data in getting the body pass the variable
//   //     // online model give our to function to entering all the data inside the model
//   //     final gettingProducts = productsJsonFromJson(jsonString);
//   //     print(gettingProducts);
//   //     return gettingProducts;
//   //   } else {
//   //     // show error message
//   //   }
//   //   return null;
//   // }
// }
