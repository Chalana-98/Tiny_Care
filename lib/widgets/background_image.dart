import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/tiny_back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class BackImg extends StatelessWidget {
  const BackImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backimg.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),

    );
  }
}