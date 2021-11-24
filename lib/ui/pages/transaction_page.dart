import 'package:bwa_airplane_ticket/cubit/transaction_cubit.dart';
import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:bwa_airplane_ticket/ui/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSucces) {
          if (state.transaction.isEmpty) {
            return const Center(
              child: Text('Tidak ada transaksi'),
            );
          } else {
            return ListView.builder(
              itemCount: state.transaction.length,
              padding: EdgeInsets.symmetric(horizontal: dMargin),
              itemBuilder: (context, index) {
                return TransactionCard(
                  state.transaction[index],
                );
              },
            );
          }
        }
        return const Center(
          child: Text(
            'Transaction Page',
          ),
        );
      },
    );
  }
}
