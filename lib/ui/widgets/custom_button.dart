import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final EdgeInsets margin;
  final Function() onPressed;
  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextSyle.copyWith(
            fontWeight: medium,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
