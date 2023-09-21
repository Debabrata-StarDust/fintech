import 'package:fintech/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_color.dart';
import '../../widgets/custom_text_style.dart';

class LanguageList extends StatefulWidget {
  LanguageList({super.key});

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  bool english_US = false;
  bool chinese = false;
  bool english_ENG = false;
  bool french = false;
  bool japanese = false;
  bool russia = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Text("Language",
            style: CustomTextStyle.subtitle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English (US)",
                  style: CustomTextStyle.subtitle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  )),
              Checkbox(
                  value: english_US,
                  onChanged: (newValue) {
                    setState(() {
                      english_US = newValue ?? false;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Chinese",
                  style: CustomTextStyle.subtitle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  )),
              Checkbox(
                  value: chinese,
                  onChanged: (newValue) {
                    setState(() {
                      chinese = newValue ?? false;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English (ENG)",
                  style: CustomTextStyle.subtitle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  )),
              Checkbox(
                  value: english_ENG,
                  onChanged: (newValue) {
                    setState(() {
                      english_ENG = newValue ?? false;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("French",
                  style: CustomTextStyle.subtitle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  )),
              Checkbox(
                  value: french,
                  onChanged: (newValue) {
                    setState(() {
                      french = newValue ?? false;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Japanese",
                  style: CustomTextStyle.subtitle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  )),
              Checkbox(
                  value: japanese,
                  onChanged: (newValue) {
                    setState(() {
                      japanese = newValue ?? false;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Russia",
                  style: CustomTextStyle.subtitle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  )),
              Checkbox(
                  value: russia,
                  onChanged: (newValue) {
                    setState(() {
                      russia = newValue ?? false;
                    });
                  }),
            ],
          ),
          SizedBox(
            height: Get.height / 3,
          ),
          InkWell(
            onTap: () {},
            child: const CustomButton(title: "Save Change"),
          )
        ],
      ),
    );
  }
}
