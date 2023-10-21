import 'package:flutter/material.dart';

class FormCard extends StatelessWidget {
  const FormCard({super.key});

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;
    return  Card(
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
                  );
  }
}