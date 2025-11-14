import 'package:flutter/material.dart';
import 'package:app_layout/Components/PageContent.dart';
import 'package:app_layout/Components/MyAppBar.dart';

class WatermelonScreen extends StatelessWidget {
  const WatermelonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(appTitle: 'Watermelon'),
      body: const PageContent(
        image: 'images/card_images/watermelon.jpg',
        title: 'Watermelon - The Ultimate Summer Hydrator',
        description: 'Watermelon is over 90% water and helps you stay hydrated. It’s rich in lycopene and vitamin A, and supports skin and heart health.',
        nutritionTable: WatermelonNutritionTable(),
        recipetitle: 'Watermelon Feta Salad',
        ingredients: [
          '2 cups watermelon cubes',
          '1/4 cup feta cheese (crumbled)',
          'Mint leaves',
          'Lime juice',
        ],
        instructions:
        'Toss all ingredients in a bowl. Serve cold as a refreshing side.',
      ),
    );
  }
}

class WatermelonNutritionTable extends StatelessWidget {
  const WatermelonNutritionTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {0: FlexColumnWidth(2), 1: FlexColumnWidth(1)},
      border: TableBorder.all(color: Colors.grey),
      children: const [
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Nutrient', style: TextStyle(fontWeight: FontWeight.bold))),
          Padding(padding: EdgeInsets.all(8), child: Text('Amount', style: TextStyle(fontWeight: FontWeight.bold))),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Calories')),
          Padding(padding: EdgeInsets.all(8), child: Text('30 kcal')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Vitamin C')),
          Padding(padding: EdgeInsets.all(8), child: Text('8.1 mg')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Fiber')),
          Padding(padding: EdgeInsets.all(8), child: Text('0.4 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Sugar')),
          Padding(padding: EdgeInsets.all(8), child: Text('6.2 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Potassium')),
          Padding(padding: EdgeInsets.all(8), child: Text('112 mg')),
        ]),
      ],
    );
  }
}
