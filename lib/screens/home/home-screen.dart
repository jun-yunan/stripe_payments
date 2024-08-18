import 'package:flutter/material.dart';
import 'package:stripe_payments/services/stripe-service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                StripeService.instance.makePayment();
              },
              color: Colors.green,
              child: const Text("Purchase"),
            )
          ],
        ),
      ),
    );
  }
}
