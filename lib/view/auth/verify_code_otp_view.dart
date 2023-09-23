import 'package:fintech/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../core/app_color.dart';
import '../../widgets/custom_text_style.dart';
import '../bottom_nav_bar/nav_bar.dart';

class VerifyOTPView extends StatelessWidget {
  const VerifyOTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhiteColor,
      appBar: AppBar(
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
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text("Verify Code",
              style: CustomTextStyle.subHeading(
                fontSize: 25,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 7,
          ),
          Text(
              "We send a code to (***in@fonyx.com). Enter the code here to verify your identity",
              style: CustomTextStyle.subHeading(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: kBlackColor,
              )),
          const SizedBox(
            height: 55,
          ),
          OtpTextField(
            cursorColor: kPrimaryColor,
            fillColor: kPrimaryColor,
            fieldWidth: 57,
            numberOfFields: 4,
            // enabledBorderColor: kWhiteColor,
            borderColor: kWhiteColor,
            focusedBorderColor: kPrimaryColor,
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            // onSubmit: (String verificationCode) {
            //   Get.snackbar("Success", "You are Login with fonyx",
            //       snackPosition: SnackPosition.BOTTOM);
            // }, // end onSubmit
          ),
          SizedBox(
            height: Get.height / 2,
          ),
          InkWell(
            onTap: () {
              Get.to(const Bottom_Nav_Bar());
            },
            child: const CustomButton(title: "Submit"),
          )
        ],
      ),
    );
  }
}
