import 'package:flutter/material.dart';
import 'package:jersey_shop_app/util/color_button.dart';
import 'package:jersey_shop_app/util/custom_stepper.dart';
import 'package:readmore/readmore.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Boogly Chair',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    '\$150.00',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Colors',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const ColorButton(color: Colors.blue),
                  CustomStepper(
                      lowerLimit: 2,
                      upperLimit: 1,
                      stepValue: 2,
                      iconSize: 20,
                      value: 0)
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 7),
                  ReadMoreText(
                    'A chair with a high back will provide optimum comfort. The fashionable design of the chair. Chair is made from very solid iron legs, red  exclusive leather, and a wooden frame for optimum support.',
                    trimLines: 2,
                    colorClickableText: Colors.orange,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
