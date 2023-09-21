import 'dart:math';

import 'package:fintech/model/demo_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app_color.dart';
import '../../../widgets/custom_text_style.dart';
import '../../add_new_card_view.dart';

class MyCardView extends StatelessWidget {
  MyCardView({super.key});

  final _random = Random();
  List cardList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Text("My Card",
            style: CustomTextStyle.subtitle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Image.asset(
            "assets/images/credit-card.png",
          ),
          const SizedBox(
            height: 20,
          ),

          Text("Your Saved cards",
              style: CustomTextStyle.subtitle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: creditCardList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 250,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.primaries[
                                _random.nextInt(Colors.primaries.length)]
                            [_random.nextInt(9) * 100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(creditCardList[index]['date'],
                                style: CustomTextStyle.subtitle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: kWhiteColor,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(creditCardList[index]['card-number'],
                                style: CustomTextStyle.subtitle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: kWhiteColor,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(creditCardList[index]['name'],
                                style: CustomTextStyle.subtitle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: kWhiteColor,
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                  //Stack(
                  // children: [
                  //   Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 10),
                  //     child: Container(
                  //       height: 130,
                  //       width: 180,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         color: Colors.primaries[
                  //                 _random.nextInt(Colors.primaries.length)]
                  //             [_random.nextInt(9) * 100],
                  //         //  color: Colors.pinkAccent.shade100,
                  //       ),
                  //     ),
                  //   ),
                  //   Column(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 10, vertical: 10),
                  //         child: Text(
                  //           creditCardList[0]['date'],
                  //           style: GoogleFonts.roboto(
                  //             color: kWhiteColor,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 10, vertical: 10),
                  //         child: Text(
                  //           "xxxx xxxx xxxx 2563",
                  //           style: GoogleFonts.roboto(
                  //             color: kWhiteColor,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 10, vertical: 10),
                  //         child: Text(
                  //           "xxxx xxxx xxxx 2563",
                  //           style: GoogleFonts.roboto(
                  //             color: kWhiteColor,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   )
                  // ],
                }),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: List.generate(
          //         creditCardList.length,
          //         (index) => ),
          //   ),
          // )
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.green,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Income",
                        style: CustomTextStyle.subtitle(
                          fontSize: 15,
                          color: kBlackColor,
                        )),
                    Text("\$18,000",
                        style: CustomTextStyle.subtitle(
                          fontSize: 20,
                          color: kBlackColor,
                        )),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 2,
                  height: 50,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.yellowAccent,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Expense",
                        style: CustomTextStyle.subtitle(
                          fontSize: 15,
                          color: kBlackColor,
                        )),
                    Text("\$6,000",
                        style: CustomTextStyle.subtitle(
                          fontSize: 20,
                          color: kBlackColor,
                        )),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.to(const AddNewCardView());
            },
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: kPrimaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: kPrimaryColor,
                  ),
                  Text("Add New card",
                      style: CustomTextStyle.subtitle(
                          fontSize: 17,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
