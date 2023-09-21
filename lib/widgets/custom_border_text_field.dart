import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomBorderTextField extends StatelessWidget {
  const CustomBorderTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        // FilteringTextInputFormatter.deny(RegExp('^0+'))
      ],
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.supervisor_account),
        hintText: "Enter card number",
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.grey,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.grey,
            )),
      ),
    );
  }
}
