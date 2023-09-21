import 'package:fintech/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../model/bording_model.dart';
import '../../widgets/custom_text_style.dart';

class AllPages extends StatelessWidget {
  final BoardingModel? boardingModel;
  const AllPages({super.key, this.boardingModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          boardingModel!.imageUrl,
          height: 350,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          boardingModel!.title,
          style: CustomTextStyle.bigHeading(color: kBlackColor),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 27,
        ),
        Text(
          boardingModel!.desc,
          style: CustomTextStyle.subtitle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
