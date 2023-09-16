import 'package:fintech/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_button.dart';

class SendMoneySuccessful extends StatelessWidget {
  const SendMoneySuccessful({super.key});

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
                    text: "Send Money Successfully\n",
                    style: GoogleFonts.roboto(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You have successfully send the amount of \$ 420.00 to Michael Jackson (michaelJenkins@gmail.com)",
                    style: GoogleFonts.roboto(
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
                  // Get.to(SendMoneySuccessful());
                },
                child: const CustomButton(title: "Back To Home")),
          ],
        ),
      ),
    );
  }
}
