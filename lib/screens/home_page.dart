import 'package:flutter/material.dart';

import 'package:tiny_care/widgets/background_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tiny Care"),
      ),
      body: Stack(
        children: [
          BackImg(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Positioned(
                  top: size.width * 0.7,
                  child: Center(
                      child: Card(
                    color: const Color.fromARGB(255, 133, 194, 228),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    elevation: 10, // This will add a default shadow to the card.
                    shadowColor: Colors.grey.withOpacity(
                        0.5), // This will change the color of the shadow.
                    child: SizedBox(
                      width: size.width * 0.98,
                      height: size.height * 0.6,
                      child: const Center(child: Text('Elevated Card')),
                    ),
                  )),
                ),
                Positioned(
                    top: size.width * 0.15,
                    right: size.width * 0.38,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xFF9DD9EC),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(2, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: size.width * 0.15,
                    left: -size.width * 0.15,
                    child: Image.asset(
                      'assets/images/baby1.png',
                      width: 300,
                      height: 300,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
