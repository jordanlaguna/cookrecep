import 'package:cookrecep/screens/white_steak/recipes_list.dart';
import 'package:flutter/material.dart';

class SteakPage extends StatelessWidget {
  const SteakPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = [
      Recipe(
        name: 'Pollo en salsa blanca',
        calificacion: 4.5,
        imageUrl: 'assets/recipes/chickenRep/Pollo-en-Salsa-Blanca.jpg',
        ingredientes: [
          '2 pechugas de pollo',
          '1 taza de crema de leche',
          '1/2 taza de champiñones',
          '1/4 taza de queso parmesano',
          'Sal y pimienta al gusto'
        ],
      ),
      Recipe(
        name: 'Pollo frito en salsa roja',
        calificacion: 4.9,
        imageUrl: 'assets/recipes/chickenRep/pollo-frito-con-tomate.jpg',
        ingredientes: [
          '2 muslos de pollo',
          '1 taza de salsa de tomate',
          '1/2 cebolla picada',
          '2 dientes de ajo',
          'Aceite para freír'
        ],
      ),
      Recipe(
        name: 'Alitas fritas en salsa buffalo',
        calificacion: 4.8,
        imageUrl: 'assets/recipes/chickenRep/alitas.jpg',
        ingredientes: [
          '10 alitas de pollo',
          '1/2 taza de salsa buffalo',
          '2 cucharadas de mantequilla',
          'Sal al gusto',
        ],
      ),
      Recipe(
        name: 'Cordon bleu',
        calificacion: 4.7,
        imageUrl: 'assets/recipes/chickenRep/Cordon-Bleu.jpg',
        ingredientes: [
          '2 pechugas de pollo',
          '2 rebanadas de jamón',
          '2 rebanadas de queso suizo',
          '1 taza de pan rallado',
          '1 huevo'
        ],
      ),
      Recipe(
        name: 'Pechuga de pollo en salsa cremosa',
        calificacion: 4.6,
        imageUrl: 'assets/recipes/chickenRep/pechuga.jpg',
        ingredientes: [
          '2 pechugas de pollo',
          '1 taza de crema de leche',
          '1/2 taza de espinacas',
          '2 dientes de ajo',
          'Sal y pimienta al gusto'
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CookRecep',
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          ...recipe.ingredientes.map((ingrediente) => Text('- $ingrediente')),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'),
            ),
          ),
        ],
      ),
    );
  }
}
