import 'package:flutter/material.dart';
import 'package:jersey_shop_app/util/item_color_list.dart';

class ColorButton extends StatefulWidget {
  final Color color;
  const ColorButton({super.key, required this.color});

  @override
  State<ColorButton> createState() => _ColorButtonState();
}

class _ColorButtonState extends State<ColorButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          colorList.length,
          (index) => IconButton(
            onPressed: () {
              // sure all element are not selected
              for (var element in colorList) {
                element.isSelected = false;
              }
              // selects the one we click

              colorList[index].isSelected = true;
              setState(() {});
            },
            icon: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: colorList[index].isSelected
                          ? colorList[index].color
                          : Colors.transparent,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorList[index].color,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
