import 'package:flutter/material.dart';
import 'package:app_layout/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Fruit App';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 255, 175, 15),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor:
              Color.fromARGB(255, 251, 187, 12), // FAB background color
          foregroundColor: Colors.white, // FAB icon color
        ),
      ),

      // theme: ThemeData(primaryColor: Colors.pink),
      home: HomeScreen(),
    );
  }
}
