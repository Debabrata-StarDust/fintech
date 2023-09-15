import 'package:fintech/core/app_color.dart';
import 'package:fintech/view/auth/verify_code_otp_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_signin_catagory.dart';
import '../../widgets/custom_text_field.dart';
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
            Text(
              "Already have an account?",
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.to(LoginView());
                },
                child: Text("Login",
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )))
          ],
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Text(
            "Create an account",
            style: GoogleFonts.roboto(
              fontSize: 25,
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            "Create an fonyx and enjoy all service",
            style: GoogleFonts.roboto(
              fontSize: 17,
              color: kBlackColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Full Name",
            style: GoogleFonts.roboto(
              fontSize: 17,
              color: kBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
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
          Text(
            "Email",
            style: GoogleFonts.roboto(
              fontSize: 17,
              color: kBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
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
          Text(
            "Password",
            style: GoogleFonts.roboto(
              fontSize: 17,
              color: kBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
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
              Get.to(VerifyOTPView());
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
                        style: GoogleFonts.roboto(
                            color: kBlackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: "Term and Services ",
                        style: GoogleFonts.roboto(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: "and ",
                        style: GoogleFonts.roboto(
                            color: kBlackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: "Privacy Policy",
                        style: GoogleFonts.roboto(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))
                  ]),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Divider(
                  thickness: 2.0,
                  color: Colors.grey.shade100,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                "Or sign up with",
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  color: kBlackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: Divider(
                  thickness: 2.0,
                  color: Colors.grey.shade100,
                ),
              ),
              const SizedBox(
                width: 30,
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
            height: 10,
          ),
          signIn_catagory(
              imagePath: "assets/icons/twitter.png",
              title: "Sign in with Twitter"),
        ],
      ),
    );
  }
}
