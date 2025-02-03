import 'package:flutter/material.dart';
class PaymentDeliveryScreen extends StatelessWidget {
  const PaymentDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment & Delivery'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Delivery Address', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(decoration: InputDecoration(hintText: 'Enter your address')),            
            SizedBox(height: 20),
            Text('Payment Method', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          ],
        ),
      ),
    );
  }
}
