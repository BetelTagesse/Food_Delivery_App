import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_receipt.dart';
import 'package:food_delivery_app/services/auth/database/firestore.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  FireStoreService db = FireStoreService();

  @override
  void initState() {
    super.initState();
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Delivery progress page'),
        ),
        bottomNavigationBar: _buildBottomNavBar(context),
        body: const Column(
          children: [
            MyReceipt(),
          ],
        ));
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bethel',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.inversePrimary)),
                Text('Driver',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary)),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.call),
                      color: Colors.green),
                ),
              ],
            ),
          ],
        ));
  }
}
