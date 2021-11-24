part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionSucces extends TransactionState {
  final List<TransactionModel> transaction;

  const TransactionSucces(this.transaction);

  @override
  List<Object> get props => [transaction];
}

class TransactionFailed extends TransactionState {
  final String error;

  const TransactionFailed(this.error);

  @override
  List<Object> get props => [error];
}
