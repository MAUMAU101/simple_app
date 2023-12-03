import 'package:flutter/material.dart';

class NutritionalFactsPage extends StatelessWidget {
  const NutritionalFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nutritional Facts'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nutritional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Serving Size: 1 cup',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Calories: 280',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Total Fat: 9g',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Saturated Fat: 4.5g',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Trans Fat: 0g',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Cholesterol: 35mg',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Sodium: 850mg',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Total Carbohydrate: 34g',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Dietary Fiber: 4g',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
