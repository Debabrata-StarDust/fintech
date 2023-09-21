import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: kPrimaryColor,
      ),
      child: Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: kWhiteColor,
        ),
      ),
    );
  }
}
