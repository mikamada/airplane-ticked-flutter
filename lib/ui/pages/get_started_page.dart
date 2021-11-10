import 'package:bwa_airplane_ticket/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img_getStarted.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly Like a Bird',
                style: whiteTextSyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style: whiteTextSyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                margin: const EdgeInsets.only(
                  top: 50,
                  bottom: 80,
                ),
                width: 220,
                title: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
