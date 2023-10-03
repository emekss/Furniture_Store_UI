import 'package:flutter/material.dart';
import 'package:jersey_shop_app/components/global_variable.dart';
import 'package:jersey_shop_app/components/product_card.dart';
import 'package:jersey_shop_app/util/emeka_gnav.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollController _controller = ScrollController();

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
      body: Column(children: [
        Stack(children: [
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
                    Text('We love clean design and natural furniture solutions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ]))
        ]),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: EmekaGnav(),
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
                onPressed: () {
                  _controller.animateTo(
                    _controller.offset + 150,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detailsPage');
            },
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  description: product['description'] as String,
                  imageUrl: product['imageUrl'] as String,
                  price: product['price'] as double,
                  title: product['title'] as String,
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
