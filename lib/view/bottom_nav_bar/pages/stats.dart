import 'package:fintech/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/demo_data.dart';
import '../../../widgets/custom_text_style.dart';

class StatsFView extends StatefulWidget {
  StatsFView({super.key});

  @override
  State<StatsFView> createState() => _StatsFViewState();
}

class _StatsFViewState extends State<StatsFView> {
  List<String> newList = <String>['Week', 'Month', 'Year'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Statistic",
            style: CustomTextStyle.subtitle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            )),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple,
                ),
              ),
              Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhiteColor,
                    ),
                    child: DropdownMenu<String>(
                      trailingIcon: const Icon(Icons.arrow_circle_down),
                      inputDecorationTheme: const InputDecorationTheme(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        border: InputBorder.none,
                      ),
                      initialSelection: newList.first,
                      onSelected: (String? value) {
                        String dropdownValue = newList.first;
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      dropdownMenuEntries: newList
                          .map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(
                            value: value, label: value);
                      }).toList(),
                    ),
                  )),
              Positioned(
                right: 240,
                top: 20,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Total Spending\n",
                        style: CustomTextStyle.subtitle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        )),
                    TextSpan(
                        text: "\$ 51,468",
                        style: CustomTextStyle.subtitle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        )),
                  ]),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.green,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Income",
                        style: CustomTextStyle.subtitle(
                          fontSize: 15,
                          color: kBlackColor,
                        )),
                    Text("\$18,000",
                        style: CustomTextStyle.subtitle(
                          fontSize: 20,
                          color: kBlackColor,
                        )),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 2,
                  height: 50,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.yellowAccent,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Expense",
                        style: CustomTextStyle.subtitle(
                          fontSize: 15,
                          color: kBlackColor,
                        )),
                    Text("\$6,000",
                        style: CustomTextStyle.subtitle(
                          fontSize: 20,
                          color: kBlackColor,
                        )),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text("Recent Expanse",
              style: CustomTextStyle.subtitle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kBlackColor,
              )),
          const SizedBox(
            height: 15,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: transactionsHistory.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 1,
                  child: ListTile(
                    leading: Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade50,
                      ),
                      child: Image.network(
                        transactionsHistory[index]['image'],
                        height: 50,
                        width: 30,
                      ),
                    ),
                    title: Text(transactionsHistory[index]['title'],
                        style: CustomTextStyle.subtitle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        )),
                    subtitle: Text(transactionsHistory[index]['subTitle']),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(transactionsHistory[index]['amount'],
                            style: CustomTextStyle.subtitle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            )),
                        //Text(DateTime.now().toString()),
                        Text(transactionsHistory[index]['time'],
                            style: CustomTextStyle.subtitle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
