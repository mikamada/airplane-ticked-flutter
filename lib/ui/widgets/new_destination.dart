import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:bwa_airplane_ticket/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class NewDestination extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String city;
  final double rating;
  const NewDestination({
    Key? key,
    required this.imgUrl,
    required this.name,
    required this.city,
    this.rating = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 90,
        margin: const EdgeInsets.only(
          top: 16,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      imgUrl,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(18)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: kGreyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/ic_star.png',
                  ),
                ),
              ),
            ),
            Text(
              rating.toString(),
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
          ],
        ),
      ),
    );
  }
}
