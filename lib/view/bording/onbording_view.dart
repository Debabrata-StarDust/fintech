import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controller/bording_controller.dart';
import '../../core/app_color.dart';
import '../auth/login_view.dart';
import 'pages.dart';

class OnboardView extends GetView<BoardingController> {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BoardingController());
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("SKIP",
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 57,
          ),
          SizedBox(
            height: Get.height * 0.6,
            child: PageView.builder(
              onPageChanged: (index) {
                controller.isLast.value = index == 2;
                controller.isIndex.value = index > 0;
              },
              physics: const BouncingScrollPhysics(),
              controller: controller.pageController,
              scrollDirection: Axis.horizontal,
              itemCount: controller.boardingData.length,
              itemBuilder: (BuildContext context, int index) {
                return AllPages(
                  boardingModel: controller.boardingData[index],
                );
              },
            ),
          ),
          Center(
              child: SmoothPageIndicator(
            controller: controller.pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: kPrimaryColor,
              dotColor: Colors.blueAccent.shade100,
              dotWidth: 7,
              dotHeight: 7,
            ),
          )),
          Obx(() => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                child: InkWell(
                  onTap: () {
                    controller.isLast.value == true
                        ? Get.to(const LoginView())
                        : controller.pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: kPrimaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        controller.isLast.value == true
                            ? Text(
                                "Get Started",
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: kWhiteColor,
                                ),
                              )
                            : Text(
                                "Next",
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: kWhiteColor,
                                ),
                              ),
                        const SizedBox(
                          width: 7,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: kWhiteColor,
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
