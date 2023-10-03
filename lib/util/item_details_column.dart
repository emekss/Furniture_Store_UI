import 'package:flutter/material.dart';

class ItemDetailsColumn extends StatelessWidget {
  final String label;
  final IconData icon;
  const ItemDetailsColumn({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 12, top: 16),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 10,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Icon(icon),
                  const SizedBox(height: 5),
                  Text(
                    label,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
