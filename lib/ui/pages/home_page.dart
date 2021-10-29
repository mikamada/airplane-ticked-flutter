import 'package:bwa_airplane_ticket/cubit/auth_cubit.dart';
import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:bwa_airplane_ticket/ui/widgets/destination_card.dart';
import 'package:bwa_airplane_ticket/ui/widgets/new_destination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                top: 30,
                left: dMargin,
                right: dMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Howdy,\n${state.user.name}',
                              style: blackTextStyle.copyWith(
                                fontSize: 24,
                                fontWeight: semiBold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/img_profile.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: kGreyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                imgUrl: 'assets/img_destination1.png',
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                rating: 4.5,
              ),
              DestinationCard(
                imgUrl: 'assets/img_destination2.png',
                name: 'White House',
                city: 'Spain',
                rating: 4.7,
              ),
              DestinationCard(
                imgUrl: 'assets/img_destination3.png',
                name: 'Hill Heyo',
                city: 'Monaco',
                rating: 4.8,
              ),
              DestinationCard(
                imgUrl: 'assets/img_destination4.png',
                name: 'Menarra',
                city: 'Japan',
                rating: 5.0,
              ),
              DestinationCard(
                imgUrl: 'assets/img_destination5.png',
                name: 'Payung Teduh',
                city: 'Singapore',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: dMargin,
          right: dMargin,
          bottom: 110,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const NewDestination(
              imgUrl: 'assets/img_destination6.png',
              name: 'Danau Beratan',
              city: 'Singajara',
              rating: 4.5,
            ),
            const NewDestination(
              imgUrl: 'assets/img_destination7.png',
              name: 'Sydney Opera',
              city: 'Australia',
              rating: 4.7,
            ),
            const NewDestination(
              imgUrl: 'assets/img_destination8.png',
              name: 'Roma',
              city: 'Italy',
              rating: 4.8,
            ),
            const NewDestination(
              imgUrl: 'assets/img_destination9.png',
              name: 'Payung Teduh',
              city: 'Singapore',
              rating: 4.5,
            ),
            const NewDestination(
              imgUrl: 'assets/img_destination10.png',
              name: 'Hill Hey',
              city: 'Monaco',
              rating: 4.5,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
