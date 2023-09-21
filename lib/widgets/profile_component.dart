import 'package:fintech/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileComponent extends StatelessWidget {
  final IconData? leadingIcon, tralingIcon;
  final String title;
  const ProfileComponent(
      {super.key,
      required this.leadingIcon,
      required this.title,
      this.tralingIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(
                leadingIcon,
                size: 22,
                color: kPrimaryColor,
              )),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 17,
              color: kBlackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Icon(
            tralingIcon,
            size: 20,
            color: kPrimaryColor,
          )
        ],
      ),
    );
  }
}
