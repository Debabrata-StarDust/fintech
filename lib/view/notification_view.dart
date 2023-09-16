import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_color.dart';
import '../model/demo_data.dart';

class NotificationView extends StatelessWidget {
  NotificationView({super.key});

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
          "Notification",
          style: GoogleFonts.roboto(
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
            "Today",
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: List.generate(
                notificationToday.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            notificationToday[index]['image'],
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
                                notificationToday[index]["title"],
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                notificationToday[index]['subTitle'],
                                style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            notificationToday[index]['time'],
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )),
          ),
          Text(
            "Yesterday",
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: List.generate(
                notificationYesterday.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            notificationToday[index]['image'],
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
                                notificationToday[index]["title"],
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                notificationToday[index]['subTitle'],
                                style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            notificationToday[index]['time'],
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
