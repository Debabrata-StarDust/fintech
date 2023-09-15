import 'package:fintech/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../model/bording_model.dart';

class AllPages extends StatelessWidget {
  final BoardingModel? boardingModel;
  const AllPages({super.key, this.boardingModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            boardingModel!.imageUrl,
            height: 300,
          ),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: boardingModel!.title,
                  style: GoogleFonts.roboto(
                    fontSize: 35,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: boardingModel!.desc,
                  style: GoogleFonts.roboto(
                    color: Colors.grey.shade400,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]))
        ],
      ),
    );
  }
}
