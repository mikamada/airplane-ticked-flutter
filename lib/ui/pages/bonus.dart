import 'package:bwa_airplane_ticket/cubit/auth_cubit.dart';
import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:bwa_airplane_ticket/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              padding: EdgeInsets.symmetric(
                horizontal: dMargin,
                vertical: dMargin,
              ),
              width: 300,
              height: 211,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/card_bonus.png',
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kPrimary.withOpacity(0.3),
                    blurRadius: 50,
                    offset: const Offset(0, 10),
                  ),
                ],
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
                              'Name',
                              style: whiteTextSyle.copyWith(
                                fontSize: 16,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              '${state.user.name}',
                              style: whiteTextSyle.copyWith(
                                fontSize: 20,
                                fontWeight: medium,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: dMargin,
                            height: dMargin,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/logo.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Pay',
                            style: whiteTextSyle.copyWith(
                              fontWeight: medium,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Text(
                    'Balance',
                    style: whiteTextSyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR ${state.user.balance}',
                    style: whiteTextSyle.copyWith(
                      fontSize: 26,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 90,
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                'Big Bonus 🎉',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'We give you early credit so that\nyou can buy a flight ticket',
                style: kGreyTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      );
    }

    Widget flyNowButton() {
      return CustomButton(
          width: 220,
          margin: const EdgeInsets.only(
            top: 50,
          ),
          title: 'Start Fly Now',
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false);
          });
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            flyNowButton(),
          ],
        ),
      ),
    );
  }
}
