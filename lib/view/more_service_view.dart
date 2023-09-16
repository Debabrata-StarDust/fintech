import 'package:fintech/model/demo_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_color.dart';

class MoreServiceView extends StatelessWidget {
  const MoreServiceView({super.key});

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
            "More Service",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              color: kBlackColor,
              fontSize: 20,
            ),
          ),
        ),
        body: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: moreServices.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 7, mainAxisSpacing: 15),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    moreServices[index]["image"],
                    height: 20,
                    color: kPrimaryColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    moreServices[index]["title"],
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              );
            }));
  }
}
