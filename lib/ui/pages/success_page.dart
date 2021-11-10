import 'package:bwa_airplane_ticket/cubit/page_cubit.dart';
import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:bwa_airplane_ticket/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/ic_succes.png',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Text(
                    'Well Booked 😍',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Are you ready to explore the new\nworld of experiences?',
                    style: kGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            CustomButton(
              title: 'My Bookings',
              onPressed: () {
                context.read<PageCubit>().setPage(1);
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              width: 220,
              margin: EdgeInsets.only(
                top: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
