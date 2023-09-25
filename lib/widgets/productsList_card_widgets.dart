import 'dart:ffi';

import 'package:fintech/model/products_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_controller.dart';
import '../core/app_color.dart';
import '../view/details_view.dart';
import 'custom_text_style.dart';

class ProductsCardsWidgets extends StatelessWidget {
  final Product? product;
  final ProductController productController = Get.put(ProductController());
  ProductsCardsWidgets({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        productController.productId.value = product!.id.toString();
        productController.fetchProductDetails();

        Get.to(DetailsView());
        print(productController.productId.value);

      },
      child: Card(
        elevation: 1,
        child: ListTile(
          leading: Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade50,
            ),
            child: Image.network(
              product!.images[0],
              height: 50,
              width: 30,
            ),
          ),
          title: Text(product!.title,
              style: CustomTextStyle.subtitle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: kBlackColor,
              )),
          subtitle: Text(
            product!.description,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(product!.price.toString(),
                  style: CustomTextStyle.subtitle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  )),
              //Text(DateTime.now().toString()),
              Text(product!.discountPercentage.toString(),
                  style: CustomTextStyle.subtitle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
