import 'package:fintech/core/app_color.dart';
import 'package:fintech/view/auth/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_signin_catagory.dart';
import '../../widgets/custom_text_field.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Fon",
                style: GoogleFonts.roboto(
                  fontSize: 27,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: "yx",
                style: GoogleFonts.roboto(
                  fontSize: 27,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                ))
          ])),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Sign in your account",
            style: GoogleFonts.roboto(
              fontSize: 27,
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Welcome back! Please enter your details",
            style: GoogleFonts.roboto(
              fontSize: 13,
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            "Email",
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextForm(
              hintText: 'Email address',
              icon: const Icon(Icons.mail_outline),
              obsecure: false),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Password",
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
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
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(7),
            onTap: () {},
            child: const CustomButton(
              title: "Sign in",
            ),
          ),
          const SizedBox(
            height: 20,
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
                "Or sign in with",
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
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.to(SignUpView());
                },
                child: Text("Sign Up",
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )))
          ],
        ),
      ),
    );
  }
}
