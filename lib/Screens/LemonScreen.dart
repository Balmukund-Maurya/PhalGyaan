import 'package:flutter/material.dart';
import 'package:app_layout/Components/PageContent.dart';
import 'package:app_layout/Components/MyAppBar.dart';

class LemonScreen extends StatelessWidget {
  const LemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(appTitle: 'Lemon'),
      body: const PageContent(
        image: 'images/card_images/lemon1.jpg',
        title: 'Lemon - Natural Cleanser & Immunity Booster',
        description:
        'Lemons are loaded with Vitamin C, antioxidants, and detoxifying properties. They’re known to aid digestion, boost immunity, and brighten skin.',
        nutritionTable: LemonNutritionTable(),
        recipetitle: 'Lemon Honey Water',
        ingredients: [
          '1 glass warm water',
          'Juice of 1 lemon',
          '1 tsp honey',
        ],
        instructions:
        'Mix lemon juice and honey in warm water. Drink on an empty stomach for best results.',
      ),
    );
  }
}

class LemonNutritionTable extends StatelessWidget {
  const LemonNutritionTable({super.key});

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
          Padding(padding: EdgeInsets.all(8), child: Text('29 kcal')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Vitamin C')),
          Padding(padding: EdgeInsets.all(8), child: Text('53 mg')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Fiber')),
          Padding(padding: EdgeInsets.all(8), child: Text('2.8 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Sugar')),
          Padding(padding: EdgeInsets.all(8), child: Text('2.5 g')),
        ]),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8), child: Text('Potassium')),
          Padding(padding: EdgeInsets.all(8), child: Text('138 mg')),
        ]),
      ],
    );
  }
}

