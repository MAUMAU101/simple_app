import 'package:flutter/material.dart';
import 'package:simple_app/screen/nutritional_facts.dart';

class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendations'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                MaterialPageRoute(
                        builder: (context) =>
                            RecipesDetailsPage(searchQuery: 'search'))
                    as BuildContext,
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _recommendationRow(context, 'Recommendation 1'),
            _recommendationRow(context, 'Recommendation 2'),
            _recommendationRow(context, 'Recommendation 3'),
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

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Widget _recommendationRow(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              navigatorKey.currentState!.push(
                MaterialPageRoute(
                  builder: (context) => RecipesDetailsPage(searchQuery: title),
                ),
              );
            },
            child: Text(title, style: const TextStyle(fontSize: 20)),
          ),
          ElevatedButton(
            onPressed: () {
              navigatorKey.currentState!.push(
                MaterialPageRoute(
                  builder: (context) => RecipesDetailsPage(searchQuery: title),
                ),
              );
            },
            child: const Text('View Recipe'),
          ),
        ],
      ),
    );
  }
}

class RecipesDetailsPage {
  const RecipesDetailsPage({required this.searchQuery});
  final String searchQuery;
  @override
  _RecipesDetailsPageState createState() => _RecipesDetailsPageState();
  static const routeName = '/recipes_details_page';
  static const routeName2 = '/nutritional_facts_page';
  static const routeName3 = '/nutritional_facts_page2';
  static const routeName4 = '/nutritional_facts_page3';
  static const routeName5 = '/nutritional_facts_page4';

  _RecipesDetailsPageState() {}
}
