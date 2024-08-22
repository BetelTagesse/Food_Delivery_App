import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  Future<void> saveOrderToDatabase(String receipt) async {
    try {
      await orders.add({
        'date': DateTime.now(),
        'order': receipt,
      });
    } catch (e) {
      print('Error saving order to Firestore: $e');
      // Optionally, rethrow the error or handle it as needed
    }
  }
}
