import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(border:Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(20),
      color: Colors.white60),
      
      child: Image.asset(imagePath,
      height: 40,),
    );
  }
}
