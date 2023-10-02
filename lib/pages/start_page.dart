import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chair,
                      color: Colors.orange,
                      size: 25,
                    ),
                    Text(
                      ' Furno.co',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.asset('assets/images/chair.jpeg'),
            const Text(
              'Modern Furniture for your home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            Container(
              height: 45,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(25)),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
