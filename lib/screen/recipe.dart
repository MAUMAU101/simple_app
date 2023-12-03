import 'package:flutter/material.dart';
import 'dart:ui';

class RecipeDetailsPage extends StatelessWidget {
  final String recipeName;
  final String servingSize;
  final List<String> instructions;
  final String imageUrl;

  const RecipeDetailsPage({
    super.key,
    required this.recipeName,
    required this.servingSize,
    required this.instructions,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              'Servings: $servingSize',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Add the list of ingredients here if available

            const SizedBox(height: 10),
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: instructions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(instructions[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
