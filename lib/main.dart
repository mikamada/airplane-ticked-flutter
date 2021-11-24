import 'package:bwa_airplane_ticket/cubit/auth_cubit.dart';
import 'package:bwa_airplane_ticket/cubit/destination_cubit.dart';
import 'package:bwa_airplane_ticket/cubit/transaction_cubit.dart';
import 'package:bwa_airplane_ticket/ui/pages/bonus.dart';
import 'package:bwa_airplane_ticket/ui/pages/get_started_page.dart';
import 'package:bwa_airplane_ticket/ui/pages/main_page.dart';
import 'package:bwa_airplane_ticket/ui/pages/sign_in_page.dart';
import 'package:bwa_airplane_ticket/ui/pages/sign_up_page.dart';
import 'package:bwa_airplane_ticket/ui/pages/splash_page.dart';
import 'package:bwa_airplane_ticket/ui/pages/success_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/page_cubit.dart';
import 'cubit/seat_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => const BonusPage(),
          '/main': (context) => const MainPage(),
          '/success': (context) => const SuccessPage(),
        },
      ),
    );
  }
}
