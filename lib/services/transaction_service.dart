import 'package:bwa_airplane_ticket/models/transaction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionService {
  CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transaction');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountOfTraveler': transaction.amountOfTraveler,
        'selectedSeats': transaction.selectedSeats,
        'insrance': transaction.insurance,
        'redundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandTotal': transaction.grandTotal,
      });
    } catch (e) {
      throw e;
    }
  }

  // fetching data transaction
  Future<List<TransactionModel>> fetchTransaction() async {
    try {
      QuerySnapshot result = await _transactionReference.get();
      print('ini result ${result}');

      List<TransactionModel> transaction = result.docs.map(
        (e) {
          return TransactionModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
          // pada e.data ditambahkan as Map<String, dynamic> karena type datanya adalah object
        },
      ).toList();

      print('ini transaksi: ${transaction}');

      return transaction;
    } catch (e) {
      throw e;
    }
  }
}
