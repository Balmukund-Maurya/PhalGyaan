import 'package:flutter/material.dart';
import 'package:app_layout/Components/PageContent.dart';
import 'package:app_layout/Components/MyAppBar.dart';

class KiwiScreen extends StatelessWidget {
  const KiwiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(appTitle: 'KiWi'),
      body: PageContent(
        image: 'images/card_images/kiwi1.jpg',
        title: 'Kiwi - The Vitamin C Powerhouse',
        description:
            'Kiwi is a small fruit packed with flavor and nutrition. It is high in Vitamin C, fiber, and antioxidants. Great for immunity, digestion, and heart health.',
        nutritionTable: KiwiNutritionTable(),
        recipetitle: '1. Kiwi Smoothie',
        ingredients: [
          '1 Kiwi (peeled & sliced)',
          '1/2 Banana',
          '1/2 cup Yogurt',
          'Honey to taste',
        ],
        instructions:
            'Blend all ingredients until smooth. Serve chill and Enjoy.',
      ),
    );
  }
}

class KiwiNutritionTable extends StatelessWidget {
  const KiwiNutritionTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1),
      },
      border: TableBorder.all(color: Colors.grey),
      children: const [
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Nutrient', style: TextStyle(fontWeight: FontWeight.bold))),
          Padding(padding: EdgeInsets.all(8), child: Text('Amount', style: TextStyle(fontWeight: FontWeight.bold))),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Calories')),
          Padding(padding: EdgeInsets.all(8), child: Text('41 kcal')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Vitamin C')),
          Padding(padding: EdgeInsets.all(8), child: Text('92.7 mg')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Fiber')),
          Padding(padding: EdgeInsets.all(8), child: Text('3 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Sugar')),
          Padding(padding: EdgeInsets.all(8), child: Text('6.2 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Potassium')),
          Padding(padding: EdgeInsets.all(8), child: Text('312 mg')),
        ]),
      ],
    );
  }
}
