import 'package:bwa_airplane_ticket/cubit/page_cubit.dart';
import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:bwa_airplane_ticket/ui/pages/home_page.dart';
import 'package:bwa_airplane_ticket/ui/pages/setting_page.dart';
import 'package:bwa_airplane_ticket/ui/pages/transaction_page.dart';
import 'package:bwa_airplane_ticket/ui/pages/wallet_page.dart';
import 'package:bwa_airplane_ticket/ui/widgets/custom_button_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            left: dMargin,
            right: dMargin,
            bottom: 30,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(dRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomButtonNavigationItem(
                imgUrl: 'assets/ic_home.png',
                index: 0,
              ),
              CustomButtonNavigationItem(
                imgUrl: 'assets/ic_booking.png',
                index: 1,
              ),
              CustomButtonNavigationItem(
                imgUrl: 'assets/ic_card.png',
                index: 2,
              ),
              CustomButtonNavigationItem(
                imgUrl: 'assets/ic_setting.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currenIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currenIndex),
              customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
