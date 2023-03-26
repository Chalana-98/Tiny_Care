import 'package:flutter/material.dart';


class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tiny Care"),
      ),
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
