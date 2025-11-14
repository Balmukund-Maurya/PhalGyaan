import 'package:app_layout/Components/MyAppBar.dart';
import 'package:flutter/material.dart';
import 'package:app_layout/Components/MyCard.dart';
import 'package:app_layout/Screens/KiwiScreen.dart';
import 'package:app_layout/Screens/LemonScreen.dart';
import 'package:app_layout/Screens/AnjeerScreen.dart';
import 'package:app_layout/Screens/PeachScreen.dart';
import 'package:app_layout/Screens/StrawberryScreen.dart';
import 'package:app_layout/Screens/WatermelonScreen.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Determine columns and aspect ratio based on screen width
  int _getCrossAxisCount(double width) {
    if (width >= 1440) return 5;
    if (width >= 1024) return 4; // Laptop
    if (width >= 768) return 3;  // Tablet
    if (width >= 425) return 2;  // Mobile L
    if (width >= 375) return 2;  // Mobile M
    return 1; // Mobile S
  }


  double _getAspectRatio(double width) {
    if (width >= 1440) return 0.85;
    if (width >= 1024) return 0.75;
    if (width >= 768) return 0.8;
    if (width >= 425) return 0.75;
    if (width >= 375) return 0.7; // Mobile M
    return 1.5; // Mobile S
  }


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final String appUrl = 'https://example.com'; // Replace with your app link


    return Scaffold(
      appBar: MyAppbar(appTitle: 'Home'),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: GridView.count(
            crossAxisCount: _getCrossAxisCount(screenWidth),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: _getAspectRatio(screenWidth),
            children: [
              const MyCard(
                cardImage: 'images/card_images/kiwi1.jpg',
                cardTitle: 'Kiwis',
                cardSubtitle: 'High in Vitamin C & fiber',
                destinationScreen: KiwiScreen(),
              ),
              const MyCard(
                cardImage: 'images/card_images/anjeer.jpeg',
                cardTitle: 'Anjeers',
                cardSubtitle: 'Rich in calcium & iron',
                destinationScreen: AnjeerScreen(),
              ),
              const MyCard(
                cardImage: 'images/card_images/lemon1.jpg',
                cardTitle: 'Lemons',
                cardSubtitle: 'Excellent source of Vitamin C',
                destinationScreen: LemonScreen(),
              ),
              const MyCard(
                cardImage: 'images/card_images/peach.jpg',
                cardTitle: 'Peach',
                cardSubtitle: 'Low in calories, high in antioxidants',
                destinationScreen: PeachScreen(),
              ),
              const MyCard(
                cardImage: 'images/card_images/strowberry.jpeg',
                cardTitle: 'Strawberry',
                cardSubtitle: 'Vitamin C & manganese',
                destinationScreen: StrawberryScreen(),
              ),
              const MyCard(
                cardImage: 'images/card_images/watermelon.jpg',
                cardTitle: 'Watermelon',
                cardSubtitle: 'Hydrating & full of lycopene',
                destinationScreen: WatermelonScreen(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            Share.share('Share this App with others: $appUrl');
          },
        tooltip: 'Share this App',
        child: Icon(Icons.share,color: Colors.white,),
      ),
    );
  }
}
