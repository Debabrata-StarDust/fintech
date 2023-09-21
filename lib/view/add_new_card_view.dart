import 'package:fintech/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_color.dart';
import '../widgets/custom_text_style.dart';
import 'confirm_wallet_pin.dart';

class AddNewCardView extends StatelessWidget {
  const AddNewCardView({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          const SizedBox(
            height: 10,
          ),
          Text("Cardholder Name",
              style: CustomTextStyle.subtitle(
                fontSize: 17,
                color: kBlackColor,
                fontWeight: FontWeight.w500,
              )),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: "Enter Name",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ))),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Expiry Date",
                        style: CustomTextStyle.subtitle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor,
                        )),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      // inputFormatters: [
                      //   FilteringTextInputFormatter.digitsOnly,
                      //   // FilteringTextInputFormatter.deny(RegExp('^0+'))
                      // ],
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.info_outline),
                          hintText: "Expiry Date",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CVV",
                        style: CustomTextStyle.subtitle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor,
                        )),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        //  FilteringTextInputFormatter.deny(RegExp('^0+'))
                      ],
                      decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.info_outline),
                          hintText: "CVV",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Card Number",
              style: CustomTextStyle.subtitle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: kBlackColor,
              )),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              // FilteringTextInputFormatter.deny(RegExp('^0+'))
            ],
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.supervisor_account),
              hintText: "Enter card number",
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  )),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.to(const ConfirmWalletPin());
            },
            child: const CustomButton(title: "Confirm"),
          )
        ],
      ),
    );
  }
}
