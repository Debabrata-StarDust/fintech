import 'package:fintech/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_color.dart';
import '../../widgets/custom_text_style.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Text(
          "My Account",
          style: CustomTextStyle.subtitle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: kBlackColor,
          )


        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Image.asset(
              "assets/images/woman.png",
              height: 140,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Change Picture",
                style: CustomTextStyle.subtitle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                )


              )),
          Text(
            "Name",
            style: CustomTextStyle.subtitle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: kBlackColor,
            )


          ),
          const SizedBox(
            height: 7,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                //  suffixIcon: const Icon(Icons.supervisor_account),
                hintText: "Enter name",
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
          Text(
            "Email",
            style: CustomTextStyle.subtitle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: kBlackColor,
            )


          ),
          const SizedBox(
            height: 7,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                //  suffixIcon: const Icon(Icons.supervisor_account),
                hintText: "Enter email",
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
          Text(
            "Phone",
            style: CustomTextStyle.subtitle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: kBlackColor,
            )

          ),
          const SizedBox(
            height: 7,
          ),
          TextFormField(
            maxLength: 10,
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              // FilteringTextInputFormatter.deny(RegExp('^0+'))
            ],
            decoration: InputDecoration(
                counterText: "",
                //  suffixIcon: const Icon(Icons.supervisor_account),
                hintText: "Enter your contact",
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
          Text(
            "Password",
            style: CustomTextStyle.subtitle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: kBlackColor,
            )

          ),
          const SizedBox(
            height: 7,
          ),
          TextFormField(
            obscureText: true,
            obscuringCharacter: '*',
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                //  suffixIcon: const Icon(Icons.supervisor_account),
                hintText: "Enter password",
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
            height: 30,
          ),
          const CustomButton(title: "Save Change")
        ],
      ),
    );
  }
}
