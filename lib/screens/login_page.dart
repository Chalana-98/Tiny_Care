import 'package:flutter/material.dart';
import '../widgets/background_image.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        BackgroundImage(),
        const Scaffold(
             backgroundColor: Colors.transparent,
        ),
        Center(
          child: Container(
            width: 500,
            height: 650,
            child: const Card(
              color: Color(0x94B4BF),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                )
              ),
              margin: EdgeInsets.fromLTRB(40, 220, 40, 2),

            ),
          ),
        )
      ],
    );
  }
}
