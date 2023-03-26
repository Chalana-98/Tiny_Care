import 'package:flutter/material.dart';
import 'package:tiny_care/components/my_button.dart';
import 'package:tiny_care/components/my_textfield.dart';
import 'package:tiny_care/components/square_tile.dart';
import '../widgets/background_image.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);




  @override
  State<Root> createState() => _RootState();
}

//Text Controller

final usernameController = TextEditingController();
final passwordController = TextEditingController();
//Sign User In

void signUserIn(){}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        const BackgroundImage(),
        const Scaffold(
             backgroundColor: Colors.transparent,
        ),





        //card widget
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

                    //Sign In Button
                    const SizedBox(height: 10,),
                    MyButton(
                      onTap: (){},
                    ),


                    const SizedBox(height: 1,),

                    // forgot button
                    Row(
                      children: [
                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 13),
                              ),
                              onPressed: (){},
                              child: const Text('Forgot Password?',
                              style: TextStyle(
                                color: Colors.black
                              ),),
                            ),
                          ],
                        ),

                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 13),

                              ),
                              onPressed: (){},
                              child: const Text('Create New Account', style: TextStyle(
                                color: Colors.black
                              ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //or Sign In button
                    const SizedBox(height: 4,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.black,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('or',
                            style: TextStyle(
                              color: Colors.black
                            ),),
                          ),

                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 15,),

                    //google and Apple button

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [

                      //google
                      SquareTile(imagePath: 'assets/images/google.png',),
                      SizedBox(width: 15,),
                      //apple
                      SquareTile(imagePath: 'assets/images/apple.png',),
                    ],
                  ),
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
