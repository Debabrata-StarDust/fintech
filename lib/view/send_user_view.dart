import 'package:fintech/view/send_money_successfull.dart';
import 'package:fintech/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_color.dart';

class SendMoneyUser extends StatelessWidget {
  const SendMoneyUser({super.key});

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
          "Send",
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
          const SizedBox(
            height: 50,
          ),
          Center(
              child: Image.asset(
            "assets/images/woman.png",
            height: 80,
          )),
          Center(
            child: Text(
              "Michael Jenkins",
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: kBlackColor,
              ),
            ),
          ),
          Center(
            child: Text(
              "michaelJenkins@gmail.com",
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
          Card(
            elevation: 2,
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enter amount",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Center(
                    child: TextFormField(
                      maxLength: 7,
                      validator: (val) {},
                      inputFormatters: [
                        ZeroNotAllowedFormatter(),
                      ],
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontSize: 35,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      //  cursorHeight: ,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Amount",
                          hintStyle: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                    ),
                  ),
                  Center(
                      child: Text(
                    "Available Balance : 5000.00 ",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(7),
            onTap: () {
              YYDialogDemo(context);
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: kPrimaryColor,
              ),
              child: Text(
                "Send Money",
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  YYDialog YYDialogDemo(BuildContext context) {
    return YYDialog().build(context)
      // ..Container()
      // ..show();
      ..width = 350
      ..height = 500
      ..widget(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Please confirm send money ",
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: kBlackColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Image.asset("assets/images/woman.png"),
              title: Text(
                "Michael Jackson",
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
              subtitle: Text(
                "michaelJenkins@gmail.com",
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            const Divider(
              height: 7,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                "Amount",
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
              trailing: Text(
                "\$420.00",
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
            ),
            const Divider(
              height: 7,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                "Fee",
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
              trailing: Text(
                "\$0.0",
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
            ),
            const Divider(
              height: 7,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                "Total Amount",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              ),
              trailing: Text(
                "\$420.00",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () {
                  Get.to(const SendMoneySuccessful());
                },
                child: const CustomButton(title: "Confirm")),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: kPrimaryColor,
                  )),
              child: Text(
                "Cancel",
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ))
      ..show();
  }
}

class ZeroNotAllowedFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Check if the first character of the input is '0' and prevent it.
    if (newValue.text.isNotEmpty && newValue.text[0] == '0') {
      return oldValue;
    }
    return newValue;
  }
}
