import 'package:get/get.dart';

import '../view/more_service_view.dart';
import '../view/transfer_money_view.dart';

class HomeViewController extends GetxController {
  listOfTestNavigation(int index) {
    print(index);
    if (index == 0) {
      Get.to(const TransferMoneyView());
    }
    if (index == 1) {}
    if (index == 2) {}
    if (index == 3) {}
    if (index == 4) {
      Get.to(const MoreServiceView());
    }
  }
}