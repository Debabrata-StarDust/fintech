import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../view/bottom_nav_bar/nav_bar.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;

  void loginUser(String email, password) async {
    isLoading = true;
    String url = 'https://dummyjson.com/auth/login';
    if (formKey.currentState!.validate()) {}
    try {
      final response = await post(Uri.parse(url), body: {
        'username': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        Get.snackbar(
            'Welcome back\t${data['username']}', 'Your login Successfully',
            backgroundColor: Colors.green.shade50,
            colorText: Colors.green,
            snackPosition: SnackPosition.BOTTOM);
        Get.to(const Bottom_Nav_Bar());
        debugPrint(data['token']);
        var storeToken = data['token'];
        // debugPrint("account");
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
}
