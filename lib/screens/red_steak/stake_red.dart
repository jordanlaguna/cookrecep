import 'package:cookrecep/model/recipes_list.dart';
import 'package:flutter/material.dart';

class SteakRedPage extends StatelessWidget {
  const SteakRedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = [
      Recipe(
        name: 'Churrasco con chimichurri',
        calificacion: 4.5,
        imageUrl: 'assets/recipes/steakRec/Churrasco-Chimichurri.jpg',
        ingredientes: [
          'Para el churrasco:',
          '1 churrasco de res',
          'Sal y pimienta al gusto',
          'Cocinar con mantequilla',
          'Cocción al gusto',
          'Para el chimichurri:',
          '1 taza de perejil',
          '1/2 taza de aceite de oliva',
          '1/4 taza de vinagre',
          '1/2 taza de ajo picado',
          '1/4 taza de cebolla picada',
          '1/4 taza de chile dulce picado',
          '1/4 taza de orégano',
          '1/4 taza de laurel',
          'Sal y pimienta al gusto',
        ],
      ),
      Recipe(
        name: 'Costilla de res asada',
        calificacion: 4.9,
        imageUrl: 'assets/recipes/steakRec/costillas.jpg',
        ingredientes: [
          'Para la costilla:',
          '1 costilla de res',
          'Sal y pimienta al gusto',
          'Cocción al gusto',
          'Para la salsa BBQ:',
          '1 taza de salsa de tomate',
          '1/2 taza de azúcar morena',
          '1/4 taza de vinagre',
          '1/4 taza de salsa inglesa',
          '1/4 taza de mostaza',
          '1/4 taza de miel',
          '1/4 taza de ajo picado',
          '1/4 taza de cebolla picada',
          '1/4 taza de chile dulce picado',
          '1/4 taza de orégano',
          '1/4 taza de mantequilla',
          'Sal y pimienta al gusto',
        ],
      ),
      Recipe(
        name: 'Lomo relleno',
        calificacion: 4.8,
        imageUrl: 'assets/recipes/steakRec/lomo-relleno.jpg',
        ingredientes: [
          'Para el lomo:',
          '1 lomo de res',
          'Sal y pimienta al gusto',
          'Cocción al gusto',
          'Para el relleno:',
          '1 taza de jamón picado',
          '1 taza de queso picado',
          '1/2 taza de cebolla picada',
          '1/2 taza de chile dulce picado',
          '1/2 taza de ajo picado',
          '1/2 taza de perejil picado',
          '1/2 taza de nueces picadas',
        ],
      ),
      Recipe(
        name: 'New York strip steak',
        calificacion: 4.7,
        imageUrl: 'assets/recipes/steakRec/new-york-strip-steak-recipe.jpg',
        ingredientes: [
          'Para el New York:',
          '1 New York strip steak',
          'Sal y pimienta al gusto',
          'Cocción al gusto',
          'Para la salsa de champiñones:',
          '1 taza de champiñones picados',
          '1/2 taza de cebolla picada',
          '1/2 taza de ajo picado',
          '1/2 taza de perejil picado',
          '1/2 taza de crema de leche',
          '1/2 taza de mantequilla',
          '1/2 taza de vino blanco',
          'Sal y pimienta al gusto',
        ],
      ),
      Recipe(
        name: 'Tomahawk steak',
        calificacion: 4.6,
        imageUrl: 'assets/recipes/steakRec/Tomahawk-Steak.jpg',
        ingredientes: [
          'Para el Tomahawk:',
          '1 Tomahawk steak',
          'Sal y pimienta al gusto',
          'Cocción al gusto',
          'Para la salsa de curry:',
          '1 taza de curry',
          '1/2 taza de cebolla picada',
          '1/2 taza de ajo picado',
          '1/2 taza de perejil picado',
          '1/2 taza de crema de leche',
          '1/2 taza de mantequilla',
          'Sal y pimienta al gusto',
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Carnes Rojas',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.orange[900]!,
                Colors.orange[800]!,
                Colors.orange[400]!,
              ],
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white, size: 35),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange[50]!, Colors.orange[100]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return RecipeCard(
              recipe: recipes[index],
            );
          },
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({
    required this.recipe,
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
            Text(
              recipe.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Imagen de la receta
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                recipe.imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            // Calificación
            Text(
              'Calificación: ${recipe.calificacion}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Abrir modal con los detalles de la receta
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (BuildContext context) {
                    return RecipeDetailsModal(recipe: recipe);
                  },
                );
              },
              child: const Text(
                'Ver receta',
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

// Widget que muestra los detalles de la receta
class RecipeDetailsModal extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailsModal({required this.recipe, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Ingredientes:',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe.ingredientes
                  .map((ingrediente) => Text(
                        '- $ingrediente',
                        style: const TextStyle(fontSize: 16),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cerrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
