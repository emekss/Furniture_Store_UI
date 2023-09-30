import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jersey_shop_app/components/global_variable.dart';
import 'package:jersey_shop_app/components/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
              )),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_rounded))
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/kitchen.jpeg',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Make Your Home Comfortable',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'We love clean design and natural furniture solutions',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: GNav(
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
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best  Offer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return const ProductCard(
                    description:
                        'A chair with a high back will provide optimum comfort. The chair is made from wooden legs',
                    imageUrl: 'assets/images/chair1.png',
                    price: '250.00',
                    title: 'Boogly Chair');
              },
            ),
          )
        ],
      ),
    );
  }
}
