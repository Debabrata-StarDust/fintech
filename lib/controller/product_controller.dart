import 'package:fintech/view/details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../model/product_detail_model.dart';
import '../model/products_model.dart';

class ProductController extends GetxController {
  var productList = [];
  var productId = "".obs;
  var isLoading = false.obs;

  var productName = ''.obs;
  RxString description = ''.obs;
  var images = ''.obs;
   var price = ''.obs;
  var rating = ''.obs;

  // All products list functions

  fetchProduct() async {
    isLoading.value = true;
    String apiUrl = "https://dummyjson.com/products";
    try {
      final response = await get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        isLoading.value = false;
        var data = allProductModelFromJson(response.body);
        productList.addAll(data.products);
      } else {
        Get.snackbar('Error', 'You are not register',
            backgroundColor: Colors.red.shade50,
            colorText: Colors.red,
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString(),
          colorText: Colors.red, snackPosition: SnackPosition.BOTTOM);
    }
  }

// Single products view functions

  fetchProductDetails() async {
    isLoading.value = true;
    String apiUrl = "https://dummyjson.com/products/${productId.value}";
    try {
      final response = await get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        isLoading.value = false;
        var data = productDetailModelFromJson(response.body);
        // store the single data in one by one variable
        productName.value = data.title;
        description.value = data.description.toString();
        images.value = data.images[0];
         price.value = data.price.toString();
        rating.value = data.rating.toString();

        // then navigate the screen on details view
        Get.to(() => DetailsView());
      } else {
        Get.snackbar('Error', 'You are not register',
            backgroundColor: Colors.red.shade50,
            colorText: Colors.red,
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString(),
          colorText: Colors.red, snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }
}
