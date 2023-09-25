import 'package:fintech/controller/details_controller.dart';
import 'package:fintech/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/app_color.dart';
import '../widgets/custom_padding.dart';
import '../widgets/custom_text_style.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key});
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        centerTitle: true,
        title: Text(
          "Products Details",
          style: CustomTextStyle.subtitle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: kBlackColor,
          ),
        ),
      ),
      body: Obx(() => productController.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.screenHorizontalPadding,
              ),
              children: [
                Image.network(
                  productController.images.value,
                  height: 350,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productController.productName.value,
                      style: CustomTextStyle.subtitle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    Text(
                      productController.rating.value,
                      style: CustomTextStyle.subtitle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  productController.description.value,
                  style: CustomTextStyle.subtitle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  productController.price.value,
                  style: CustomTextStyle.subtitle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            )),
    );
  }
}
