import 'package:flutter/material.dart';
import 'details_screen.dart';

class Recipe {
  final String name;
  final String ingredients;
  final String instructions;

  Recipe(
      {required this.name,
      required this.ingredients,
      required this.instructions});
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = [
      Recipe(
        name: 'Butter Chicken',
        ingredients:
            '• Chicken\n• Butter\n• Tomato puree\n• Heavy cream\n• Garlic\n• Ginger\n• Garam masala\n• Cumin\n• Coriander\n• Chili powder\n• Salt & pepper',
        instructions:
            '1. Marinate chicken with spices and yogurt.\n2. Cook chicken in butter until golden.\n3. Add tomato puree and simmer.\n4. Stir in cream and cook until thickened.\n5. Serve with naan or rice.',
      ),
      Recipe(
        name: 'Chana Masala (Chickpea Curry)',
        ingredients:
            '• Chickpeas\n• Onion\n• Tomatoes\n• Garlic\n• Ginger\n• Green chilies\n• Cumin seeds\n• Turmeric\n• Garam masala\n• Coriander powder\n• Salt & pepper',
        instructions:
            '1. Sauté onions, garlic, and ginger in oil.\n2. Add tomatoes and cook until soft.\n3. Stir in spices and cook until fragrant.\n4. Add chickpeas and simmer for 15 minutes.\n5. Serve with rice or flatbread.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Recipes')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index].name),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
