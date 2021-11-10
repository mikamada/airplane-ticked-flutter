import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  final String imgUrl;
  final int id;
  const Photos({
    Key? key,
    required this.imgUrl,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 6,
        right: 16,
      ),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imgUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
