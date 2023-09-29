import 'package:fintech/controller/product_controller.dart';
import 'package:fintech/widgets/custom_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../core/app_color.dart';
import '../widgets/custom_text_style.dart';

class DetailsView extends StatefulWidget {
  DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  final ProductController productController = Get.put(ProductController());

  double ratingUpdate = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
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
              child: CircularProgressIndicator(
                color: kPrimaryColor,
              ),
            )
          : ListView(
              // padding: const EdgeInsets.symmetric(
              //   horizontal: AppConstants.screenHorizontalPadding,
              // ),
              children: [
                SizedBox(
                  height: 350,
                  child: PageView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: productController.images.value.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        print(index);
                        return Image.network(
                          productController.images.value,
                          height: 350,
                          fit: BoxFit.fill,
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppConstants.screenHorizontalPadding,
                      vertical: AppConstants.screenVerticalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brand Name: ${productController.productName.value}",
                            style: CustomTextStyle.subtitle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RatingBar.builder(
                                itemSize: 17,
                                updateOnDrag: true,
                                glow: true,
                                initialRating: 0,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    weight: 10,
                                    size: 10,
                                  );
                                  // switch (index) {
                                  //   case 0:
                                  //     return const Icon(
                                  //       Icons.sentiment_very_dissatisfied,
                                  //       color: Colors.red,
                                  //     );
                                  //   case 1:
                                  //     return const Icon(
                                  //       Icons.sentiment_dissatisfied,
                                  //       color: Colors.redAccent,
                                  //     );
                                  //   case 2:
                                  //     return const Icon(
                                  //       Icons.sentiment_neutral,
                                  //       color: Colors.amber,
                                  //     );
                                  //   case 3:
                                  //     return const Icon(
                                  //       Icons.sentiment_satisfied,
                                  //       color: Colors.lightGreen,
                                  //     );
                                  //   case 4:
                                  //     return const Icon(
                                  //       Icons.sentiment_very_satisfied,
                                  //       color: Colors.green,
                                  //     );
                                  //   case 5:
                                  //     return const Icon(
                                  //       Icons.sentiment_very_satisfied,
                                  //       color: Colors.green,
                                  //     );
                                  // }
                                },
                                onRatingUpdate: (rating) {
                                  print(rating);
                                  setState(() {
                                    //  ratingUpdate = rating;
                                    rating = productController.rating.value;
                                  });
                                },
                              ),
                              Text(
                                "Rating: ${productController.rating.value.toString()}",
                                style: CustomTextStyle.subtitle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: kBlackColor,
                                ),
                              ),
                            ],
                          ),
                          // Text(
                          //   productController.rating.value,
                          //   style: CustomTextStyle.subtitle(
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.w500,
                          //     color: kBlackColor,
                          //   ),
                          // ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "₹ ${productController.price.value}",
                            style: CustomTextStyle.subtitle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Discount: ${productController.discountPercentage.value}%",
                            style: CustomTextStyle.subtitle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppConstants.screenHorizontalPadding,
                      vertical: AppConstants.screenVerticalPadding),
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "Description:\n",
                      style: CustomTextStyle.subtitle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: productController.description.value,
                      style: CustomTextStyle.subtitle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500,
                      ),
                    )
                  ])),
                ),
              ],
            )),
    );
  }
}
