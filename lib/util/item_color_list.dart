import 'package:flutter/material.dart';

class ColorList {
  final Color color;
  bool isSelected;
  ColorList({
    required this.color,
    required this.isSelected,
  });
}

final colorList = [
  ColorList(color: Colors.blue, isSelected: true),
  ColorList(color: Colors.orange, isSelected: false),
  ColorList(color: Colors.black, isSelected: false),
  ColorList(color: Colors.green, isSelected: false),
];
