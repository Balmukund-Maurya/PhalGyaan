import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key, required this.appTitle});

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        textAlign: TextAlign.start,
        appTitle,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
    );
  }

  // Required when using custom AppBars
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
