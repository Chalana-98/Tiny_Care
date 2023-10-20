import 'package:flutter/material.dart';
import 'package:tiny_care/components/my_button.dart';
import 'package:tiny_care/components/my_textfield.dart';
import 'package:tiny_care/components/square_tile.dart';
import 'package:tiny_care/screens/home_page.dart';
import 'package:tiny_care/screens/register_page.dart';
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

void signUserIn() {}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tiny Care"),
      ),
      body: Stack(
        children: [
          const BackgroundImage(),

          Scaffold(
            backgroundColor: Colors.transparent,
            body:  Stack(
              children: [


                Positioned(
                  top: -size.width *0.42,
                  left: -size.width * 0.48,


                    child: Image.asset(
                      'assets/images/bbyset1.png',
                      width: 600,
                      height: 600,

                    )),

                Positioned(
                  child: Card(
                    color: const Color(0x0094b4bf),
                    elevation: 1,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                     margin: const EdgeInsets.fromLTRB(40, 140, 40,20),
                    child: Scaffold(

                      backgroundColor: Colors.transparent,
                      body: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 60,
                            ),
                            const Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            //User name
                            MyTextField(
                              controller: usernameController,
                              hintText: 'User name',
                              obscureText: false,
                            ),

                            const SizedBox(
                              height: 10,
                            ),

                            //Password
                            MyTextField(
                              controller: passwordController,
                              hintText: 'Password',
                              obscureText: true,
                            ),

                            //Sign In Button
                            const SizedBox(
                              height: 10,
                            ),
                            MyButton(
                              text: 'Sign In',
                                onTap: () => {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomePage()),
                                      )
                                      },
                            ),

                            const SizedBox(
                              height: 1,
                            ),

                            // forgot button
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        textStyle: const TextStyle(fontSize: 13),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Forgot Password?',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        textStyle: const TextStyle(fontSize: 13),
                                      ),
                                      onPressed: () => {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const RegisterPage()),
                                      )
                                      },
                                      child: const Text(
                                        'Create New Account',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            //or Sign In button
                            const SizedBox(
                              height: 4,
                            ),

                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      thickness: 0.5,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      'or',
                                      style: TextStyle(color: Colors.black),
                                    ),
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

                            const SizedBox(
                              height: 10,
                            ),

                            //google and Apple button

                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //google
                                SquareTile(
                                  imagePath: 'assets/images/google.png',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                //apple
                                SquareTile(
                                  imagePath: 'assets/images/apple.png',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ]

            ),
          ),



        ],


      ),
    );
  }
}
