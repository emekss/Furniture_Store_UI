import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search_outlined,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_rounded))
        ],
      ),
      body:  Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/kitchen.jpeg',),
             const Padding(
               padding: EdgeInsets.only(top: 100, left: 10),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Text('Make Your Home Comfortable', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40,),),
                 SizedBox(height: 10),
                 Text('We love clean design and natural furniture solutions', style: TextStyle(color: Colors.white, fontSize: 15,),),
                  ],
                ),
             )],
          ),
          const SizedBox(height: 10),
          const GNav(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            tabBorderRadius: 45,
            gap: 8,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.orange,
            tabs: [
            GButton(icon: Icons.chair, text: 'Chair',),
            GButton(icon: Icons.table_bar, text: 'Table',),
            GButton(icon: Icons.chair, text: 'Chair',),
            GButton(icon: Icons.chair_alt_outlined, text: 'Chair',),
          ])
        ],
      ),
    );
  }
}