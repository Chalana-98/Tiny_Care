import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {

   MyButton({Key? key, required this.onTap}) : super(key: key);

  final Function()? onTap;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 80),
        decoration: BoxDecoration(color: Colors.indigo,
        borderRadius: BorderRadius.circular(20)),
        child: const Center(

         child: Text('Sign In',
         style: TextStyle(color: Colors.black,
         fontSize: 20,
         fontWeight: FontWeight.bold),),

        ),
      ),
    );
  }
}
