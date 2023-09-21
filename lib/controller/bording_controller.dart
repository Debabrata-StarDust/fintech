import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../model/bording_model.dart';

class BoardingController extends GetxController {
  var isLast = false.obs;
  var isIndex = false.obs;
  final pageController = PageController();

  List boardingData = [
    BoardingModel(
        title: 'Fastest Transaction',
        height: const SizedBox(
          height: 10,
        ),
        desc:
            'Easily manage your bill a payment with a simple process. Experience quick and Streamlined bill payment for enhance efficiency ',
        imageUrl: 'assets/images/first.jpg'),
    BoardingModel(
        title: 'Safest and Trusted',
        height: const SizedBox(
          height: 15,
        ),
        desc:
            'Initiate your financial task right now, we are here to assist you in monitoring expatiating your transaction ',
        imageUrl: 'assets/images/security.jpg'),
    BoardingModel(
      title: 'Easy Banking',
      height: const SizedBox(
        height: 10,
      ),
      desc:
          'Forget everything you know about the chaotic world of finance. It can be easy state ford process',
      imageUrl: 'assets/images/easy.jpg',
    ),
  ];
}
