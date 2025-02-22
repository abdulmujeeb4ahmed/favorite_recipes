import 'package:flutter/material.dart';
import 'home_screen.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ingredients:', style: Theme.of(context).textTheme.titleLarge),
            Text(recipe.ingredients),
            const SizedBox(height: 16),
            Text('Instructions:',
                style: Theme.of(context).textTheme.titleLarge),
            Text(recipe.instructions),
          ],
        ),
      ),
    );
  }
}
