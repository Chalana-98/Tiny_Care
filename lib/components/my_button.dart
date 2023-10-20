import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {

   MyButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  final Function()? onTap;
  final String text ;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 80),
        decoration: BoxDecoration(color: Colors.indigo,
        borderRadius: BorderRadius.circular(20)),
        child: Center(

         child: Text(widget.text,
         style: const TextStyle(color: Colors.black,
         fontSize: 20,
         fontWeight: FontWeight.bold),),

        ),
      ),
    );
  }
}
