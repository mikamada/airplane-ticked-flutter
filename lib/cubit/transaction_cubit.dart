import 'package:bloc/bloc.dart';
import 'package:bwa_airplane_ticket/models/transaction_model.dart';
import 'package:bwa_airplane_ticket/services/transaction_service.dart';
import 'package:equatable/equatable.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
      emit(TransactionSucces([]));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }

  void fetchTransactions() async {
    try {
      emit(TransactionLoading());
      List<TransactionModel> transaction =
          await TransactionService().fetchTransaction();
      emit(TransactionSucces(transaction));
      print(transaction);
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
