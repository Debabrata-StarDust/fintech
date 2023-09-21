import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/send_user_view.dart';

class TransferMoneyController extends GetxController {
  RxString searchValue = ''.obs;
  TextEditingController searchSender = TextEditingController();
  List searchedList = [];
  final RxBool isSearch = false.obs;
  // Future<List<String>> fetchSuggestions(String searchValue) async {
  //   await Future.delayed(const Duration(
  //     milliseconds: 750,
  //   ));

  //   return sendMoneyList.where((element) {
  //     return element.toLowerCase().contains(searchValue.toLowerCase());
  //   }).toList();
  // }

  listMoneyTransfer(int index) {
    if (index == 0) {
      Get.to(const SendMoneyUser());
    }
    if (index == 1) {}
    if (index == 2) {}
    if (index == 3) {}
    if (index == 4) {
      //   Get.to(const MoreServiceView());
    }
  }

  Future<List> searchContact(String searchValue, sendMoneyList) async {
    isSearch.value = true;
    var value = sendMoneyList.where((element) {
      return element['title']!.toLowerCase().contains(searchValue.toLowerCase()) ||
          element['title']!.toUpperCase().contains(searchValue.toUpperCase());
    });

    searchedList.addAll(value);
    isSearch.value = false;
    return searchedList;
  }
}
