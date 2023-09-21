import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Container signIn_catagory(
    {required String title, required String imagePath}) {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade300,
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 30,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}