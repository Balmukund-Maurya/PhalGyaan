import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.cardImage,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.destinationScreen,
  });

  final String cardImage;
  final String cardTitle;
  final String cardSubtitle;
  final Widget destinationScreen;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => destinationScreen),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardImages(cardImage: cardImage, screenWidth: screenWidth),
            Expanded(
              child: CardTitle(
                cardTitle: cardTitle,
                cardSubtitle: cardSubtitle,
                screenWidth: screenWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardImages extends StatelessWidget {
  const CardImages({
    super.key,
    required this.cardImage,
    required this.screenWidth,
  });

  final String cardImage;
  final double screenWidth;

  double _getImageHeight() {
    if (screenWidth < 375) return 130; // Mobile S
    if (screenWidth < 425) return 150; // Mobile M
    if (screenWidth < 768) return 160; // Mobile L
    if (screenWidth < 1024) return 180; // Tablet
    return 200; // Laptop
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
      child: Image.asset(
        cardImage,
        height: _getImageHeight(),
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class CardTitle extends StatelessWidget {
  const CardTitle({
    super.key,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.screenWidth,
  });

  final String cardTitle;
  final String cardSubtitle;
  final double screenWidth;

  double _getTitleFontSize() {
    if (screenWidth < 375) return 14;
    if (screenWidth < 425) return 16;
    if (screenWidth < 768) return 18;
    if (screenWidth < 1024) return 20;
    return 22;
  }

  double _getSubtitleFontSize() {
    if (screenWidth < 375) return 12;
    if (screenWidth < 425) return 13;
    if (screenWidth < 768) return 14;
    return 16;
  }

  double _getPadding() {
    if (screenWidth < 375) return 6;
    if (screenWidth < 768) return 8;
    return 10;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(_getPadding()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4),
          Text(
            cardTitle,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: _getTitleFontSize(),
              color: const Color(0xFF212121),
            ),
          ),
          SizedBox(height: 4),
          Text(
            cardSubtitle,
            style: TextStyle(
              fontSize: _getSubtitleFontSize(),
              color: const Color(0xFF757575),
            ),
          ),
        ],
      ),
    );
  }
}
