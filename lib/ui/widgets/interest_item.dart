import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:flutter/material.dart';

class InteresItem extends StatelessWidget {
  final String title;
  const InteresItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 6,
            ),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/ic_check.png',
                ),
              ),
            ),
          ),
          Text(title, style: blackTextStyle),
        ],
      ),
    );
  }
}
