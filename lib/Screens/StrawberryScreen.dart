import 'package:flutter/material.dart';
import 'package:app_layout/Components/PageContent.dart';
import 'package:app_layout/Components/MyAppBar.dart';

class StrawberryScreen extends StatelessWidget {
  const StrawberryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(appTitle: 'Strawberry'),
      body: const PageContent(
        image: 'images/card_images/strowberry.jpeg',
        title: 'Strawberry - Sweet, Juicy & Full of Antioxidants',
        description:
        'Strawberries are rich in Vitamin C, fiber, and antioxidants called anthocyanins. They promote heart health and radiant skin.',
        nutritionTable: StrawberryNutritionTable(),
        recipetitle: 'Strawberry Chia Pudding',
        ingredients: [
          '1 cup almond milk',
          '1/4 cup chia seeds',
          '1/2 cup strawberries (mashed)',
          'Honey to taste',
        ],
        instructions:
        'Mix all ingredients, let sit overnight in the fridge. Stir and serve chilled.',
      ),
    );
  }
}
class StrawberryNutritionTable extends StatelessWidget {
  const StrawberryNutritionTable({super.key});

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
          Padding(padding: EdgeInsets.all(8), child: Text('32 kcal')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Vitamin C')),
          Padding(padding: EdgeInsets.all(8), child: Text('58.8 mg')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Fiber')),
          Padding(padding: EdgeInsets.all(8), child: Text('2 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Sugar')),
          Padding(padding: EdgeInsets.all(8), child: Text('4.9 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Potassium')),
          Padding(padding: EdgeInsets.all(8), child: Text('153 mg')),
        ]),
      ],
    );
  }
}
