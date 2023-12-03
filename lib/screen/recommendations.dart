import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:simple_app/screen/nutritional_facts.dart';

class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendations'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _recommendationRow('Recommendation 1'),
            _recommendationRow('Recommendation 2'),
            _recommendationRow('Recommendation 3'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NutritionalFactsPage()),
                );
              },
              child: const Text('Go to Nutritional Facts Page'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _recommendationRow(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(title, style: const TextStyle(fontSize: 20)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('View Recipe'),
          ),
        ],
      ),
    );
  }
}

class RecipesDetailsPage extends StatelessWidget {
  const RecipesDetailsPage({super.key, required this.searchQuery});

  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(searchQuery),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

Widget build(BuildContext context) {
  var title = title2;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: null,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('View Recipe'),
        ),
      ],
    ),
  );
}

mixin title2 {}

class _recipeRow {
  _recipeRow(param0);

  static fromMap(Map<String, dynamic> decode) {}
}

Map<String, dynamic> toMap() {
  var title;
  return <String, dynamic>{
    'title': title,
  };
}
