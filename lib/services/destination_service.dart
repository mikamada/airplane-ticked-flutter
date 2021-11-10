import 'package:bwa_airplane_ticket/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _destinationRef.get();

      List<DestinationModel> destinations = result.docs.map(
        (e) {
          return DestinationModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
          // pada e.data ditambahkan as Map<String, dynamic> karena type datanya adalah object
        },
      ).toList();

      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
