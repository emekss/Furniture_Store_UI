import 'package:flutter/material.dart';

class QuantityCounterButton extends StatelessWidget {
  const QuantityCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      height: 40,
      width: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.minimize_outlined),
            ),
            const Expanded(child: TextField()),
            Container(
              height: 25,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
