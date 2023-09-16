import 'package:fintech/core/app_color.dart';
import 'package:fintech/view/tarnsactions_history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/home_view_controller.dart';
import '../../../model/demo_data.dart';
import '../../notification_view.dart';

class HomePage extends GetView<HomeViewController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeViewController());
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              "assets/images/woman.png",
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Hello,\n",
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor,
                        )),
                    TextSpan(
                        text: "Masud.👋",
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        )),
                  ])),
            ),
            // Spacer(),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(NotificationView());
            },
            icon: Image.asset(
              "assets/icons/bell.png",
              height: 30,
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          Image.asset(
            "assets/images/credit-card.png",
            height: 340,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                paymentList.length,
                (index) => GestureDetector(
                      onTap: () {
                        controller.listOfTestNavigation(index);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            paymentList[index]["image"],
                            height: 20,
                            color: kPrimaryColor,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            paymentList[index]["title"],
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    )),
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            children: [
              Text(
                "Transactions History",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: kBlackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Get.to(const TransactionsHistory());
                  },
                  child: Text(
                    "See all",
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 250,
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
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
