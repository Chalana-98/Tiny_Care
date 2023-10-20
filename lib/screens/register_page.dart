import 'package:flutter/material.dart';
import 'package:tiny_care/components/my_button.dart';
import 'package:tiny_care/components/my_textfield.dart';
import 'package:tiny_care/components/square_tile.dart';
import '../widgets/background_image.dart';
import 'package:select_form_field/select_form_field.dart';


//Text Controller

final usernameController = TextEditingController();
final passwordController = TextEditingController();
final repasswordController = TextEditingController();
final emailcontroller = TextEditingController();
final gendercontroller = TextEditingController();
// final List<String> _listgender = ['male','Female','Other'];
final List<Map<String, dynamic>> _gender = [
  {'gender': 'Male',}, {'gender': 'Female',}, {'gender': 'Other',},
];
 final genderselect = TextEditingController();

//Sign User In

void signUserIn() {}


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String valuechoose;
    String _valueChanged = '';
    String _valueToValidate = '';
    String _valueSaved = '';
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
                                height: 20,
                              ),
                              // const Center(
                              //   child: Text(
                              //     'Sign Up',
                              //     style: TextStyle(
                              //         fontWeight: FontWeight.bold, fontSize: 30),
                              //   ),
                              // ),
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

                              //User name
                              MyTextField(
                                controller: emailcontroller,
                                hintText: 'Email',
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

                              const SizedBox(
                                height: 10,
                              ),

                              //Password
                              MyTextField(
                                controller: repasswordController,
                                hintText: 'Re Enter Password',
                                obscureText: true,
                              ),
                              //Sign up Button
                              const SizedBox(
                                height: 10,
                              ),

                              // SelectFormField(
                              //   hintText: "Select Your Baby Gender",
                              //   enableSearch: true,
                              //   controller: genderselect,
                              //   items: _gender,
                              //   type: SelectFormFieldType.dropdown,
                              //     onChanged: (val) => setState(() => _valueChanged = val),
                              //     validator: (val) {
                              //       setState(() => _valueToValidate = val ?? '');
                              //       return null;
                              //     },
                              //     onSaved: (val) => setState(() => _valueSaved = val ?? '')
                              // ),
                              MyTextField(
                                controller: gendercontroller,
                                hintText: 'Gender of Baby',
                                obscureText: false,
                              ),


                              const SizedBox(
                                height: 10,
                              ),
                              // MyButton(
                              //
                              //   onTap: () {},
                              // ),
                              //
                            MyButton(onTap: (){}, text: "Sign Up"),



                              const SizedBox(
                                height: 10,
                              ),

                              //google and Apple button


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

