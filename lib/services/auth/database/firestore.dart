import 'dart:js_interop';

import 'package:collection/collection.dart';

class FireStoreSetvice {
  final CollectionReference orders =
      FirebaseFireStore.instance.collection('orders');

  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
    });
  }
}
