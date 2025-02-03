import 'package:flutter/material.dart';
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.fastfood, size: 100),
            const SizedBox(height: 20),
            const Text('Product Name', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Description of the product goes here.'),
            const SizedBox(height: 20),
            const Text('\$10.00', style: TextStyle(fontSize: 24, color: Colors.green)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
