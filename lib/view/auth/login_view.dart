import 'package:fintech/core/app_color.dart';
import 'package:fintech/view/auth/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_padding.dart';
import '../../widgets/custom_signin_catagory.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_style.dart';
import '../bottom_nav_bar/nav_bar.dart';
import '../bottom_nav_bar/pages/homepage.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.screenHorizontalPadding),
        children: [
          RichText(
              textScaleFactor: 1.1,
              text: TextSpan(children: [
                TextSpan(
                    text: "Fon",
                    style: CustomTextStyle.title(color: kPrimaryColor)),
                TextSpan(
                    text: "yx",
                    style: CustomTextStyle.title(color: kBlackColor))
              ])),
          const SizedBox(
            height: 10,
          ),
          Text("Sign in to your account",
              style: CustomTextStyle.title(color: kBlackColor)),
          const SizedBox(
            height: 10,
          ),
          Text("Welcome back! Please enter your details",
              style: CustomTextStyle.title(
                color: kBlackColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          const SizedBox(
            height: 47,
          ),
          Text("Email",
              style: CustomTextStyle.subtitle(
                color: kBlackColor,
              )),
          const SizedBox(
            height: 5,
          ),
          CustomTextForm(
              hintText: 'Email address',
              icon: const Icon(Icons.mail_outline),
              obsecure: false),
          const SizedBox(
            height: 20,
          ),
          Text("Password", style: CustomTextStyle.subtitle(color: kBlackColor)),
          const SizedBox(
            height: 5,
          ),
          CustomTextForm(
              hintText: 'Password',
              icon: const Icon(Icons.lock_outline),
              obsecure: true),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text("Forgot Password?",
                  style: CustomTextStyle.subtitle(color: kPrimaryColor)),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(7),
            onTap: () {
              Get.to(const Bottom_Nav_Bar());
            },
            child: const CustomButton(
              title: "Sign in",
            ),
          ),
          const SizedBox(
            height: 28,
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
              Text("Or sign in with",
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
            height: 25,
          ),
          signIn_catagory(
              imagePath: "assets/icons/google.png",
              title: "Sign in with Google"),
          const SizedBox(
            height: 17,
          ),
          signIn_catagory(
              imagePath: "assets/icons/twitter.png",
              title: "Sign in with Twitter"),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Don't have account?",
                style: CustomTextStyle.subtitle(color: kBlackColor)),
            TextButton(
                onPressed: () {
                  Get.to(const SignUpView());
                },
                child: Text("Sign Up",
                    style: CustomTextStyle.subtitle(color: kPrimaryColor)))
          ],
        ),
      ),
    );
  }
}
