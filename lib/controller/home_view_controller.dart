// import 'dart:async';
//
// import 'package:fintech/services/all_products_services.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// import '../model/products_model.dart';
// import '../view/more_service_view.dart';
// import '../view/request_payment.dart';
// import '../view/transfer_money_view.dart';
//
// class HomeViewController extends GetxController {
//   RxBool isLoading = false.obs;
//
//   var productList = [].obs;
//
//   listOfTestNavigation(int index) {
//     debugPrint(index.toString());
//     if (index == 0) {
//       Get.to(const TransferMoneyView());
//     }
//     if (index == 1) {
//       Get.to(const RequestPaymentView());
//     }
//     if (index == 2) {}
//     if (index == 3) {}
//     if (index == 4) {
//       Get.to(const MoreServiceView());
//     }
//   }
//
//   String url = 'https://dummyjson.com/products';
//   static var client = http.Client();
//
//   // getProducts() async {
//   //   isLoading.value = false;
//   //   try {
//   //     var response = await Dio().get(url);
//   //     final productList = ProductsJson.fromJson(response.data);
//   //     print('ProductsList$productList');
//   //     print("response$response");
//   //   } catch (e) {
//   //     print(e.toString());
//   //   }
//   // }
//   Productjson? productJsonModel;
//   void productsList() async {
//     // productJosonModel = await AllProducts.fetchProducts();
//     // if (products != null) {
//     //   productList.value = products;
//     // }
//   }
//   // Future<List<ProductsJson>> getAllProducts() async {
//   //   isLoading.value = true;
//   //   try {
//   //     // final response = await get(Uri.parse("https://dummyjson.com/products"));
//   //     // if (response.statusCode == 200) {
//   //     //   // store the data in jsonList
//   //     //   final List<dynamic> jsonList = jsonDecode(response.body);
//   //     //   print(jsonList);
//   //     //   productList.value =
//   //     //       jsonList.map((json) => ProductsJson.fromJson(json)).toList();
//   //     // }
//   //     final response = await get(Uri.parse("https://dummyjson.com/products"));
//   //     var data = jsonDecode(response.body.toString());
//   //     print("Data is coming$data");
//   //     if (response.statusCode == 200) {
//   //       for (Map<String, dynamic> i in data) {
//   //         productList.add(ProductsJson.fromJson(i));
//   //         print("product in map$productList");
//   //         print(i.toString());
//   //       }
//   //       return productList;
//   //     } else {
//   //       debugPrint("Api Server not coming");
//   //     }
//   //   } catch (e) {
//   //     print(e.toString());
//   //   } finally {
//   //     isLoading.value = false;
//   //   }
//   // }
//
//   Productjson? addProducts;
//
//   @override
//   void onInit() {
//     // Get called when controller is created
//     super.onInit();
//     Timer.periodic(const Duration(seconds: 1), (timer) async {
//       if (timer.tick == 1) {
//         // addProducts = await AllProducts().getAllProducts();
//       }
//     });
//     print(addProducts);
//     // getAllProducts();
//     //  productsList();
//   }
// }
//
// // var isLoading = false.obs;
// // var products = <Product>[].obs;
// //
// // void fetchProducts() async {
// //   isLoading.value = true;
// //
// //   try {
// //     // Make your API call here
// //     // For example, using the http package
// //     // final response = await http.get(Uri.parse('your_api_url_here'));
// //     // if (response.statusCode == 200) {
// //     //   final List<dynamic> jsonList = jsonDecode(response.body);
// //     //   products.value = jsonList.map((json) => Product.fromJson(json)).toList();
// //     // }
// //   } catch (e) {
// //     print('Error: $e');
// //   } finally {
// //     isLoading.value = false;
// //   }
// // }

