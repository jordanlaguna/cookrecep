import 'package:cookrecep/screens/screen_recipes/fish_recipe/fish_recipes.dart';
import 'package:cookrecep/screens/screen_recipes/red_steak/stake_red.dart';
import 'package:cookrecep/screens/screen_recipes/white_steak/steak_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de categorías con imágenes
    final List<Map<String, dynamic>> categories = [
      {
        'name': 'Carnes Blancas',
        'total': 15,
        'image': 'assets/recipes/white_steak.jpg',
        'route': SteakPage(),
      },
      {
        'name': 'Carnes Rojas',
        'total': 10,
        'image': 'assets/recipes/red_steak.jpg',
        'route': SteakRedPage(),
      },
      {
        'name': 'Pescados y Mariscos',
        'total': 8,
        'image': 'assets/recipes/fish.jpg',
        'route': FishPage(),
      },
      {
        'name': 'Asados',
        'total': 20,
        'image': 'assets/recipes/dips.jpeg',
        'route': SteakPage(),
      },
      {
        'name': 'Salsas',
        'total': 12,
        'image': 'assets/recipes/sauce.jpg',
        'route': SteakPage(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Recetas de Cocina'),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return RecipeCard(
            name: categories[index]['name'],
            total: categories[index]['total'],
            imageUrl: categories[index]['image'],
            route: categories[index]['route'],
          );
        },
      ),
    );
  }
}

// Widget personalizado para las tarjetas
class RecipeCard extends StatelessWidget {
  final String name;
  final int total;
  final String imageUrl;
  final Widget route;

  const RecipeCard({
    required this.name,
    required this.total,
    required this.imageUrl,
    required this.route,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Título de la categoría
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Imagen de la categoría
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            // Total de recetas
            Text(
              'Total de recetas: $total',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => route,
                    ));
              },
              child: const Text(
                'Ver recetas',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontFamily: "monserrat",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
