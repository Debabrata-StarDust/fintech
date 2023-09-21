import 'package:fintech/controller/request_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../core/app_color.dart';
import '../model/demo_data.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_text_style.dart';

class RequestPaymentView extends GetView<RequestPaymentController> {
  const RequestPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RequestPaymentController());
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: kBlackColor,
          ),
        ),
        title: Text(
          "Request",
          style: CustomTextStyle.subtitle(
            fontWeight: FontWeight.w600,
            color: kBlackColor,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          Text(
            "Choose a Sender",
            style: CustomTextStyle.subtitle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: kBlackColor,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            "Please select your sender to send your money",
            style: CustomTextStyle.subtitle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: kBlackColor,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextForm(
              //  textController: controller.searchSender,
              hintText: 'Search by name or email',
              icon: const Icon(Icons.search),
              obsecure: false),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Recent transactions",
            style: CustomTextStyle.subtitle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: kBlackColor,
            ),
          ),
          Column(
            children: List.generate(
                sendMoneyList.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          controller.listMoneyTransfer(index);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              sendMoneyList[index]['image'],
                              height: 50,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  sendMoneyList[index]["title"],
                                  style: CustomTextStyle.subtitle(
                                    fontSize: 17,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  sendMoneyList[index]['subTitle'],
                                  style: CustomTextStyle.subtitle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              sendMoneyList[index]['money'],
                              style: CustomTextStyle.subtitle(
                                fontSize: 17,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          height: 100,
          child: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: kPrimaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    "assets/icons/scan.png",
                    height: 30,
                    color: kWhiteColor,
                  ),
                ),
              ),
              Text(
                "Scan QR",
                style: CustomTextStyle.subtitle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: kBlackColor,
                ),
              ),
            ],
          )),
    );
  }
}
