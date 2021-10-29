import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:bwa_airplane_ticket/ui/pages/checkout_page.dart';
import 'package:bwa_airplane_ticket/ui/widgets/custom_button.dart';
import 'package:bwa_airplane_ticket/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/ic_available.png',
                  ),
                ),
              ),
            ),
            Text('Available', style: blackTextStyle),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/ic_selected.png',
                  ),
                ),
              ),
            ),
            Text('Selected', style: blackTextStyle),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/ic_unavailable.png',
                  ),
                ),
              ),
            ),
            Text('Unavailable', style: blackTextStyle),
          ],
        ),
      );
    }

    Widget seatSelected() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: kGreyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: kGreyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      ' ',
                      style: kGreyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: kGreyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: kGreyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // NOTE: SEAT 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 2),
                  SeatItem(status: 2),
                  Container(
                    width: 48,
                    height: 48,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '1',
                          style: kGreyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 0),
                  SeatItem(status: 2),
                ],
              ),
            ),
            // NOTE: SEAT 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 0),
                  SeatItem(status: 0),
                  Container(
                    width: 48,
                    height: 48,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '2',
                          style: kGreyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 0),
                  SeatItem(status: 2),
                ],
              ),
            ),
            // NOTE: SEAT 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '3',
                          style: kGreyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 0),
                  SeatItem(status: 0),
                ],
              ),
            ),
            // NOTE: SEAT 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 0),
                  SeatItem(status: 2),
                  Container(
                    width: 48,
                    height: 48,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '4',
                          style: kGreyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 0),
                  SeatItem(status: 0),
                ],
              ),
            ),
            // NOTE: SEAT 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 0),
                  SeatItem(status: 0),
                  Container(
                    width: 48,
                    height: 48,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '5',
                          style: kGreyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SeatItem(status: 2),
                  SeatItem(status: 0),
                ],
              ),
            ),

            // NOTE: Your seat
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: kGreyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            // NOTE: TOTAL
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: kGreyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 150.000.000',
                    style: purpleTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        title: 'Continue to Check out',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutPage(),
            ),
          );
        },
        margin: EdgeInsets.only(
          top: 30,
          bottom: 40,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          seatSelected(),
          checkoutButton(),
        ],
      ),
    );
  }
}
