import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container CustomTextForm(
    {required String hintText,
    required Widget icon,
    required bool obsecure,
    TextEditingController? textController}) {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 55,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: Colors.grey.shade400,
        )),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: TextFormField(
        controller: textController,
        obscureText: obsecure,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            prefixIcon: icon,
            hintStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
    ),
  );
}
