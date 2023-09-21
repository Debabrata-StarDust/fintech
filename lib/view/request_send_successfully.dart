import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_style.dart';
import 'bottom_nav_bar/nav_bar.dart';

class RequestSendSuccessfully extends StatelessWidget {
  const RequestSendSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.green.shade50,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset(
                      "assets/icons/check.png",
                      height: 10,
                      color: kWhiteColor,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "Request Money Successfully\n",
                    style: CustomTextStyle.subtitle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You have successfully send the request amount of \$ 420.00 to Michael Jackson (michaelJenkins@gmail.com)",
                    style: CustomTextStyle.subtitle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                ])),

            // Text(
            //   "Send Money Successfully",
            //   style: GoogleFonts.roboto(
            //     fontSize: 22,
            //     fontWeight: FontWeight.bold,
            //     color: kBlackColor,
            //   ),
            // ),
            // Center(
            //   child: Text(
            //     "you have successfully send the amount of \$ 420.00 to Michael Jackson (michaelJenkins@gmail.com)",
            //     style: GoogleFonts.roboto(
            //       fontSize: 15,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.grey,
            //     ),
            //   ),
            // )
            const SizedBox(
              height: 40,
            ),
            InkWell(
                onTap: () {
                  Get.to(const Bottom_Nav_Bar());
                },
                child: const CustomButton(title: "Back To Home")),
          ],
        ),
      ),
    );
  }
}
