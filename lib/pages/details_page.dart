import 'package:flutter/material.dart';
import 'package:jersey_shop_app/components/details_container.dart';
import 'package:jersey_shop_app/util/item_details_column.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  ItemDetailsColumn(
                    icon: Icons.horizontal_distribute_outlined,
                    label: '85cm',
                  ),
                  ItemDetailsColumn(
                    icon: Icons.bed_rounded,
                    label: 'Wood',
                  ),
                  ItemDetailsColumn(
                    icon: Icons.vertical_distribute,
                    label: '45cm',
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/chair1.png',
                    height: 250,
                  ),
                ],
              )
            ],
          ),
          const DetailsContainer()
        ],
      ),
    );
  }
}
