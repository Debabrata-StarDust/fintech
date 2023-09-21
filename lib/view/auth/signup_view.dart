import 'package:fintech/core/app_color.dart';
import 'package:fintech/view/auth/verify_code_otp_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_signin_catagory.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_style.dart';
import 'login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

bool isCheck = false;

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Already have an account?",
                style: CustomTextStyle.subtitle(
                  color: kBlackColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                )),
            TextButton(
                onPressed: () {
                  Get.to(const LoginView());
                },
                child: Text("Login",
                    style: CustomTextStyle.subtitle(color: kPrimaryColor)))
          ],
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Text("Create an account",
              style: CustomTextStyle.subtitle(
                color: kBlackColor,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(
            height: 7,
          ),
          Text("Create an fonyx and enjoy all service",
              style: CustomTextStyle.subtitle(color: kBlackColor)),
          const SizedBox(
            height: 20,
          ),
          Text("Full Name",
              style: CustomTextStyle.subHeading(color: kBlackColor)),
          const SizedBox(
            height: 4,
          ),
          CustomTextForm(
              hintText: 'Full name',
              icon: const Icon(Icons.person),
              obsecure: false),
          const SizedBox(
            height: 10,
          ),
          Text("Email", style: CustomTextStyle.subHeading(color: kBlackColor)),
          const SizedBox(
            height: 4,
          ),
          CustomTextForm(
              hintText: 'Email',
              icon: const Icon(Icons.mail_outline),
              obsecure: false),
          const SizedBox(
            height: 10,
          ),
          Text("Password",
              style: CustomTextStyle.subHeading(color: kBlackColor)),
          const SizedBox(
            height: 4,
          ),
          CustomTextForm(
              hintText: 'Password',
              icon: const Icon(Icons.lock_outline),
              obsecure: true),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.to(const VerifyOTPView());
            },
            child: const CustomButton(
              title: 'Sign up',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Checkbox(
                  value: isCheck,
                  onChanged: (newValue) {
                    setState(() {
                      isCheck = newValue ?? false;
                    });
                  }),
              Expanded(
                child: RichText(
                  softWrap: true,
                  textAlign: TextAlign.start,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "I agree to the company ",
                        style: CustomTextStyle.subtitle(
                            color: kBlackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: "Term of Services ",
                        style: CustomTextStyle.subtitle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: "and ",
                        style: CustomTextStyle.subtitle(
                            color: kBlackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: "Privacy Policy",
                        style: CustomTextStyle.subtitle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))
                  ]),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 37,
              ),
              Expanded(
                child: Divider(
                  thickness: 2.0,
                  color: Colors.grey.shade300,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Text("Or sign up with",
                  style: CustomTextStyle.subtitle(
                    fontSize: 15,
                    color: kBlackColor,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: Divider(
                  thickness: 2.0,
                  color: Colors.grey.shade300,
                ),
              ),
              const SizedBox(
                width: 37,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          signIn_catagory(
              imagePath: "assets/icons/google.png",
              title: "Sign in with Google"),
          const SizedBox(
            height: 15,
          ),
          signIn_catagory(
              imagePath: "assets/icons/twitter.png",
              title: "Sign in with Twitter"),
        ],
      ),
    );
  }
}
