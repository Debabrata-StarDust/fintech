import 'package:fintech/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/demo_data.dart';
import '../widgets/custom_text_style.dart';

class TransactionsHistory extends StatelessWidget {
  const TransactionsHistory({super.key});

  @override
  Widget build(BuildContext context) {
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
          "Transactions History",
          style: CustomTextStyle.subtitle(
            fontWeight: FontWeight.w600,
            color: kBlackColor,
            fontSize: 20,
          ),
        ),
      ),
      body: SizedBox(
        height: Get.height / 2,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: transactionsHistory.length,
            itemBuilder: (context, index) {
              return Card(
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
                      transactionsHistory[index]['image'],
                      height: 50,
                      width: 30,
                    ),
                  ),
                  title: Text(
                    transactionsHistory[index]['title'],
                    style: CustomTextStyle.subtitle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  subtitle: Text(transactionsHistory[index]['subTitle']),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        transactionsHistory[index]['amount'],
                        style: CustomTextStyle.subtitle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      //Text(DateTime.now().toString()),
                      Text(
                        transactionsHistory[index]['time'],
                        style: CustomTextStyle.subtitle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
