import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_color.dart';
import '../../widgets/custom_text_style.dart';

class ContactListView extends StatelessWidget {
  const ContactListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Text("Contact List",
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
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                //  suffixIcon: const Icon(Icons.supervisor_account),
                hintText: "Search contacts",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ))),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Recent Contacts",
              style: CustomTextStyle.subtitle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kBlackColor,
              )),
          const SizedBox(
            height: 10,
          ),
          recent_Contacts(),
          recent_Contacts(),
          recent_Contacts(),
          const SizedBox(
            height: 20,
          ),
          Text("All Contacts",
              style: CustomTextStyle.subtitle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kBlackColor,
              )),
          all_contact(),
          all_contact(),
          all_contact(),
          all_contact(),
        ],
      ),
    );
  }

  ListTile all_contact() {
    return ListTile(
      leading: Image.asset(
        "assets/images/woman.png",
        height: 70,
      ),
      title: Text("Abdul Karim",
          style: CustomTextStyle.subtitle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: kBlackColor,
          )),
      subtitle: Text("+8800123456789",
          style: CustomTextStyle.subtitle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          )),
    );
  }

  ListTile recent_Contacts() {
    return ListTile(
      leading: Image.asset(
        "assets/images/woman.png",
        height: 70,
      ),
      title: Text("Masud Rana",
          style: CustomTextStyle.subtitle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: kBlackColor,
          )),
      subtitle: Text("+8800123456789",
          style: CustomTextStyle.subtitle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          )),
    );
  }
}
