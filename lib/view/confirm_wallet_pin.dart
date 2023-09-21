import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../core/app_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_style.dart';
import 'bottom_nav_bar/pages/my_card_view.dart';

class ConfirmWalletPin extends StatelessWidget {
  const ConfirmWalletPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Text("Add New Card",
            style: CustomTextStyle.subtitle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          Text("Confirm Wallet Pin",
              style: CustomTextStyle.subtitle(
                fontWeight: FontWeight.bold,
                color: kBlackColor,
                fontSize: 20,
              )),
          Text(
              "Please enter your five digit wallet pin number that we confirm ts you",
              style: CustomTextStyle.subtitle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: kBlackColor,
              )),
          const SizedBox(
            height: 20,
          ),
          OtpTextField(
            obscureText: true,
            fieldWidth: 50,
            numberOfFields: 5,
            showFieldAsBox: true,
          ),
          SizedBox(height: Get.height / 2),
          InkWell(
            onTap: () {
              //  Get.to(const ConfirmWalletPin());
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.green.shade50,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/icons/check.png",
                            height: 10,
                            color: kWhiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  content: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Your credit card has been successfully added",
                          style: CustomTextStyle.subtitle(
                            fontSize: 18,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ))
                    ]),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: InkWell(
                          onTap: () {
                            Get.to(MyCardView());
                          },
                          child: const CustomButton(title: "OK")),
                    ),
                  ],
                ),
              );
            },
            child: const CustomButton(title: "Confirm Pin"),
          )
        ],
      ),
    );
  }
}
