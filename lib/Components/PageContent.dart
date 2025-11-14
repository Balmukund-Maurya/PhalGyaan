import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class PageContent extends StatelessWidget {
  const PageContent({super.key, required this.image,required this.title,required this.description, required this.nutritionTable,required this.recipetitle,required this.ingredients, required this.instructions});
  final String image;
  final String title;
  final String description;
  final String recipetitle;
  final List<String> ingredients;
  final String instructions;
  final Widget nutritionTable;
  final String appUrl = 'https://example.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSection(image: image),
            const SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [TitleSection(
                  title: title,
                  description: description),
      
                /// Nutritional Info Table
                const Text(
                  'Nutritional Table (per 100g):',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                nutritionTable,
                const SizedBox(height: 30),
                /// Kiwi Recipes
                const Text(
                  'Easy Kiwi Recipes:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                RecipeCard(
                  recipetitle: recipetitle,
                  ingredients: ingredients,
                  instructions: instructions,
                ),],
            ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            Share.share('Share this App with others: $appUrl');
          },
        tooltip: 'Share this App',
        backgroundColor: Color(0xFF5D2DE6),
        child: Icon(Icons.share,color: Colors.white,),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        /// Description
        Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}


class RecipeCard extends StatelessWidget {
  final String recipetitle;
  final List<String> ingredients;
  final String instructions;

  const RecipeCard({super.key, 
    required this.recipetitle,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(recipetitle,
                style:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Ingredients:'),
            ...ingredients.map((item) => Text('- $item')),
            const SizedBox(height: 8),
            const Text('Instructions:'),
            Text(instructions),
          ],
        ),
      ),
    );
  }
}
