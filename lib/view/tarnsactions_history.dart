import 'package:fintech/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/demo_data.dart';

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
          style: GoogleFonts.roboto(
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
                  leading: Image.network(
                    transactionsHistory[index]['image'],
                    height: 50,
                    width: 30,
                  ),
                  title: Text(
                    transactionsHistory[index]['title'],
                    style: GoogleFonts.roboto(
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
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      //Text(DateTime.now().toString()),
                      Text(
                        transactionsHistory[index]['time'],
                        style: GoogleFonts.roboto(
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
