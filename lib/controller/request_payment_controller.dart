import 'package:get/get.dart';

import '../view/request_enter_amount.dart';

class RequestPaymentController extends GetxController {
  listMoneyTransfer(int index) {
    if (index == 0) {
      Get.to(const RequestEnterAmount());
    }
    if (index == 1) {}
    if (index == 2) {}
    if (index == 3) {}
    if (index == 4) {
      //   Get.to(const MoreServiceView());
    }
  }
}
