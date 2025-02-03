import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  // Sample data for the menu categories and items
  final Map<String, List<String>> categories = {
    'Cakes': ['Birthday Cakes', 'Wedding Cakes', 'Cupcakes', 'Chocolate Cake', 'Cheesecake'],
    'Pies': ['Apple Pie', 'Lemon Meringue Pie', 'Pumpkin Pie', 'Peach Pie'],
    'Other Foods': ['Sandwiches', 'Cookies', 'Donuts', 'Brownies', 'Croissants']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pastry Menu'),
      ),
      body: ListView(
        children: categories.keys.map((category) {
          return CategorySection(category: category, items: categories[category]!, context: context);
        }).toList(),
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  final String category;
  final List<String> items;
  final BuildContext context;

  const CategorySection({
    super.key,
    required this.category,
    required this.items,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          // Display items as a grid
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(), // Disable scrolling for nested grid
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Handle tap on the item, can show more details or add to cart
                  _showFoodDetailsDialog(context, items[index]);
                },
                child: Card(
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.fastfood, size: 50),
                      Text(items[index]),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // Show dialog to display food details
  void _showFoodDetailsDialog(BuildContext context, String foodItem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(foodItem),
          content: Text('Details about $foodItem go here.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // Handle adding to cart or performing other actions
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$foodItem added to cart')),
                );
              },
              child: const Text('Add to Cart'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
