import 'package:flutter/material.dart';
import 'package:tiny_care/components/my_textfield.dart';
import '../widgets/background_image.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  //Text Controller



  @override
  State<Root> createState() => _RootState();
}
final usernameController = TextEditingController();
final passwordController = TextEditingController();

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        const BackgroundImage(),
        const Scaffold(
             backgroundColor: Colors.transparent,
        ),
        Center(
          child: Container(
            width: 500,
            height: 650,
            child:  Card(
              color: const Color(0x0094b4bf),
              elevation: 1,
              shape:  const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                )
              ),
              margin:  const EdgeInsets.fromLTRB(40, 190, 40, 2),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  children:  [
                    const SizedBox(height: 60,),
                    const Center(
                      child: Text('Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                      ),
                    ),
                    const SizedBox(height: 10,),

                    //User name
                    MyTextField(
                      controller: usernameController,
                      hintText: 'UserName',
                      obscureText: false,
                    ),


                    const SizedBox(height: 10,),
                    //Password
                    MyTextField(
                      controller : passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    //

                    //
                  ],
                ),
              ),

            ),
          ),
        )
      ],
    );
  }
}
