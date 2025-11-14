import 'package:flutter/material.dart';
import 'package:app_layout/Components/PageContent.dart';
import 'package:app_layout/Components/MyAppBar.dart';

class AnjeerScreen extends StatelessWidget {
  const AnjeerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(appTitle: 'Anjeer'),
      body: const PageContent(
        image: 'images/card_images/anjeer.jpeg',
        title: 'Anjeer - A Natural Iron & Fiber Source',
        description:
        'Figs are rich in fiber, iron, calcium, and antioxidants. They support digestion, boost energy, and are excellent for bone health.',
        nutritionTable: AnjeerNutritionTable(),
        recipetitle: 'Anjeer Milkshake',
        ingredients: [
          '4–5 soaked anjeer (figs)',
          '1 cup milk (chilled)',
          '1 tsp honey (optional)',
        ],
        instructions:
        'Blend soaked figs with milk until smooth. Add honey if needed. Serve cold.',
      ),
    );
  }
}

class AnjeerNutritionTable extends StatelessWidget {
  const AnjeerNutritionTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {0: FlexColumnWidth(2), 1: FlexColumnWidth(1)},
      border: TableBorder.all(color: Colors.grey),
      children: const [
        TableRow(children: [
          Padding(
              padding: EdgeInsets.all(8),
              child: Text('Nutrient',
                  style: TextStyle(fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.all(8),
              child: Text('Amount',
                  style: TextStyle(fontWeight: FontWeight.bold))),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Calories')),
          Padding(padding: EdgeInsets.all(8), child: Text('74 kcal')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Vitamin C')),
          Padding(padding: EdgeInsets.all(8), child: Text('2 mg')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Fiber')),
          Padding(padding: EdgeInsets.all(8), child: Text('2.9 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Sugar')),
          Padding(padding: EdgeInsets.all(8), child: Text('16.3 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Potassium')),
          Padding(padding: EdgeInsets.all(8), child: Text('232 mg')),
        ]),
      ],
    );
  }
}
