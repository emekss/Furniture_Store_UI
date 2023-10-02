import 'package:flutter/material.dart';
import 'package:jersey_shop_app/pages/home_page.dart';
import 'package:jersey_shop_app/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
      routes: {
        '/homePage': (context) => HomePage(),
      },
    );
  }
}
