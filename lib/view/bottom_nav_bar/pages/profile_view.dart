import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app_color.dart';
import '../../../model/demo_data.dart';
import '../../../model/profile_model.dart';
import '../../../widgets/custom_text_style.dart';
import '../../../widgets/profile_component.dart';
import '../../profile/contactList_view.dart';
import '../../profile/language_list.dart';
import '../../profile/update_profile.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Text("Profile",
            style: CustomTextStyle.subtitle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
          Center(
            child: Text("Masud Rana",
                style: CustomTextStyle.subtitle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor)),
          ),
          Center(
            child: Text("info@masudRana.me",
                style: CustomTextStyle.subtitle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Get.to(const UpdateProfile());
            },
            child: const ProfileComponent(
              leadingIcon: Icons.person,
              title: 'My Account',
              tralingIcon: Icons.arrow_forward_ios,
            ),
          ),
          const Divider(
            thickness: 0.2,
          ),
          InkWell(
            onTap: () {
              Get.to(LanguageList());
            },
            child: const ProfileComponent(
              leadingIcon: Icons.language,
              title: "Language",
              tralingIcon: Icons.arrow_forward_ios,
            ),
          ),
          const Divider(
            thickness: 0.2,
          ),
          InkWell(
            onTap: () {
              Get.to(const ContactListView());
            },
            child: const ProfileComponent(
              leadingIcon: Icons.phone,
              title: "Contact List",
              tralingIcon: Icons.arrow_forward_ios,
            ),
          ),
          const Divider(
            thickness: 0.2,
          ),
          const ProfileComponent(
            leadingIcon: Icons.settings,
            title: "Setting",
            tralingIcon: Icons.arrow_forward_ios,
          ),
          const Divider(
            thickness: 0.2,
          ),
          const ProfileComponent(
            leadingIcon: Icons.help_center,
            title: "Help Center",
            tralingIcon: Icons.arrow_forward_ios,
          ),
          const Divider(
            thickness: 0.2,
          ),
          const ProfileComponent(
            leadingIcon: Icons.logout,
            title: "Log out",
          ),
          // Column(
          //   children: List.generate(
          //       profleList.length,
          //       (index) => InkWell(
          //         onTap: (){},
          //         child: Padding(
          //               padding: const EdgeInsets.symmetric(vertical: 5),
          //               child: Card(
          //                 child: ListTile(
          //                   leading: Container(
          //                       alignment: Alignment.center,
          //                       width: 50,
          //                       height: 50,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(100),
          //                         color: Colors.grey.shade100,
          //                       ),
          //                       child: const Icon(
          //                         CupertinoIcons.person,
          //                         color: kPrimaryColor,
          //                       )),
          //                   title: Text(
          //                     profleList[index]['title'],
          //                     style: GoogleFonts.roboto(
          //                       fontSize: 17,
          //                       fontWeight: FontWeight.w600,
          //                       color: kBlackColor,
          //                     ),
          //                   ),
          //                   trailing: const Icon(
          //                     Icons.arrow_forward_ios,
          //                     size: 20,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //       )),
          // )
        ],
      ),
    );
  }
}
