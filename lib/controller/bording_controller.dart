import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../model/bording_model.dart';

class BoardingController extends GetxController {
  var isLast = false.obs;
  var isIndex = false.obs;
  final pageController = PageController();

  List boardingData = [
    BoardingModel(
        title: '\nFastest Transaction\n\n',
        desc:
            'Easily manage your bill a payment with a simple process. Experience quick and Streamlined bill payment for enhance efficiency ',
        imageUrl: 'assets/images/first.jpg'),
    BoardingModel(
        title: '\nSafest and Trusted\n\n',
        desc:
            'Initiate your financial task right now, we are here to assist you in monitoring expatiating your transaction ',
        imageUrl: 'assets/images/security.jpg'),
    BoardingModel(
        title: '\nEasy Banking\n\n',
        desc:
            'Forget everything you know about the chaotic world of finance. It can be easy state ford process  ',
        imageUrl: 'assets/images/easy.jpg'),
  ];
}
