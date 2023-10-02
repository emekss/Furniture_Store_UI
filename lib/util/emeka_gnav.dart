import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class EmekaGnav extends StatelessWidget {
  const EmekaGnav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const GNav(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tabBorderRadius: 45,
        gap: 8,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.orange,
        tabs: [
          GButton(
            icon: Icons.chair,
            text: 'Chair',
          ),
          GButton(
            icon: Icons.table_bar,
            text: 'Table',
          ),
          GButton(
            icon: Icons.chair,
            text: 'Chair',
          ),
          GButton(
            icon: Icons.chair_alt_outlined,
            text: 'Chair',
          ),
        ]);
  }
}
