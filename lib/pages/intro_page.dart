import 'package:ecommerce_flutter/pages/home.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    "lib/images/buildings.png",
                    height: 240,
                  ),
                ),

                const SizedBox(
                  height: 48,
                ),

                //title
                const Text(
                  "Barcelona",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

                const SizedBox(
                  height: 24,
                ),

                //subtitle
                const Text(
                  "Spray paint, acrylic, and oil stick, Spray paint, acrylic, and oil stickSpray paint, acrylic, and oil stick",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 48,
                ),

                //start now button
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
