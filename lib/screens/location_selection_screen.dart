import 'package:flutter/material.dart';
class LocationSelectionScreen extends StatelessWidget {
  const LocationSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.map, size: 100, color: Colors.orange),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Use GPS Location'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enter Address Manually'),
            ),
          ],
        ),
      ),
    );
  }
}
