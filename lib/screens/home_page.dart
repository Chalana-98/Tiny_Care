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
    return  Scaffold(
             appBar: AppBar(
        title: const Text("Tiny Care"),
      ),

      body:  Stack(

              children: [
             BackImg(),
               Scaffold(
                 backgroundColor: Colors.transparent,

                 body: Stack(
                  children: [
                    Positioned(
                          top: -size.width *0.42,
                  left: -size.width * 0.48,

                      child: Image.asset(
                      'assets/images/bbyset1.png',
                      width: 600,
                      height: 600,

                    )
                      ),
                  ],
                 ),
               ),
              ],
      ),

    );
  }
}