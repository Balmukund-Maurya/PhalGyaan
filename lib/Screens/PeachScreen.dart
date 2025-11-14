import 'package:flutter/material.dart';
import 'package:app_layout/Components/PageContent.dart';
import 'package:app_layout/Components/MyAppBar.dart';

class PeachScreen extends StatelessWidget {
  const PeachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(appTitle: 'Peach'),
      body: const PageContent(
        image: 'images/card_images/peach.jpg',
        title: 'Peach - Juicy and Full of Antioxidants',
        description:
        'Peaches are rich in vitamins A & C, low in calories, and loaded with fiber. They support skin health and digestion.',
        nutritionTable: PeachNutritionTable(),
        recipetitle: 'Peach Yogurt Parfait',
        ingredients: [
          '1 ripe peach (sliced)',
          '1 cup Greek yogurt',
          'Granola',
          'Honey for drizzle',
        ],
        instructions:
        'Layer yogurt, peaches, and granola in a glass. Drizzle with honey. Chill and serve.',
      ),
    );
  }
}

class PeachNutritionTable extends StatelessWidget {
  const PeachNutritionTable({super.key});

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
          Padding(padding: EdgeInsets.all(8), child: Text('39 kcal')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Vitamin C')),
          Padding(padding: EdgeInsets.all(8), child: Text('6.6 mg')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Fiber')),
          Padding(padding: EdgeInsets.all(8), child: Text('1.5 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Sugar')),
          Padding(padding: EdgeInsets.all(8), child: Text('8.4 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Potassium')),
          Padding(padding: EdgeInsets.all(8), child: Text('190 mg')),
        ]),
      ],
    );
  }
}
