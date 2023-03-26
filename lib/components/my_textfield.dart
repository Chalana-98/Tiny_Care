import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({Key? key,
        required this.controller,
        required this.hintText,
        required this.obscureText
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:   const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
          controller: controller,
          obscureText: obscureText,

          decoration: InputDecoration(

              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigo)
              ),
              fillColor: Colors.white54,
              filled: true,
              hintText: hintText,
          )
      ),
    );
  }
}
