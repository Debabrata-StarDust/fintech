import 'package:fintech/controller/product_controller.dart';
import 'package:fintech/core/app_color.dart';
import 'package:fintech/services/all_products_services.dart';
import 'package:fintech/view/tarnsactions_history.dart';
import 'package:fintech/widgets/custom_padding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_view_controller.dart';
import '../../../model/demo_data.dart';
import '../../../widgets/custom_text_style.dart';
import '../../../widgets/productsList_card_widgets.dart';
import '../../notification_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            "assets/images/woman.png",
            width: 50,
            height: 50,
          ),
        ),
        title: Row(
          children: [
            // const SizedBox(
            //   width: 10,
            // ),
            RichText(
                textAlign: TextAlign.start,
                text: TextSpan(children: [
                  TextSpan(
                      text: "Hello,\n",
                      style: CustomTextStyle.subtitle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor,
                      )),
                  TextSpan(
                      text: "Masud.👋",
                      style: CustomTextStyle.subtitle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor,
                      )),
                ])),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: IconButton(
              onPressed: () {
                Get.to(NotificationView());
              },
              icon: Image.asset(
                "assets/icons/bell.png",
                height: 30,
                color: kBlackColor,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.screenHorizontalPadding),
        children: [
          Image.asset(
            "assets/images/credit-card.png",
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                paymentList.length,
                (index) => GestureDetector(
                      onTap: () {
                        // controller.listOfTestNavigation(index);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade100,
                            ),
                            child: Image.asset(
                              paymentList[index]["image"],
                              height: 20,
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(paymentList[index]["title"],
                              style: CustomTextStyle.subtitle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                    )),
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            children: [
              Text("Transactions History",
                  style: CustomTextStyle.subtitle(
                    fontSize: 20,
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                  )),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Get.to(const TransactionsHistory());
                  },
                  child: Text("See all",
                      style: CustomTextStyle.subtitle(
                        fontSize: 17,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      )))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Obx(
            () => productController.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: productController.productList.length,
                    itemBuilder: (context, index) {
                      return ProductsCardsWidgets(
                        product: productController.productList[index],
                      );
                    }),
          )
        ],
      ),
    );
  }
}
