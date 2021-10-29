import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obsecureText;
  final TextEditingController controller;
  const CustomTextFromField({
    Key? key,
    required this.label,
    required this.hint,
    this.obsecureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: blackTextStyle.copyWith(fontWeight: regular),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            child: TextFormField(
              obscureText: obsecureText,
              cursorColor: kBlackColor,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    dRadius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(dRadius),
                  borderSide: BorderSide(
                    color: kPrimary,
                  ),
                ),
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
