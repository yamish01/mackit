import 'package:flutter/material.dart';
import 'package:mackit/FirstPage.dart';
import 'package:mackit/SignUp.dart';

import 'package:mackit/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool _Obscured = false;
  void _toggleObscured() {
    _Obscured = !_Obscured;
    setState(() {
      () {};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/lg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            WidgetText("Log", "In"),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 69, 108, 251)),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(169, 43, 43, 43)),
                child: Column(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: userController,
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter UserName",
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          prefixIcon: const Icon(
                            Icons.person,
                            size: 20,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 69, 108, 251),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 69, 108, 251),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 69, 108, 251),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return "Enter UserName";
                          } else {
                            return null;
                          }
                        }),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: TextFormField(
                        obscuringCharacter: "*",
                        obscureText: _Obscured,
                        maxLength: 20,
                        controller: passwordController,
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 20),
                            prefixIcon: const Icon(
                              Icons.lock,
                              size: 20,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 69, 108, 251),
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 69, 108, 251),
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 69, 108, 251),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: _toggleObscured,
                              child: Icon(
                                _Obscured
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_rounded,
                                color: Colors.white,
                              ),
                            )),
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return "Enter Password";
                          } else if (value!.length < 3) {
                            return 'PasswordShort';
                          }
                          return null;
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FirstPage()));
                      },
                      child: const Text("Log In",
                          style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(130, 45),
                          backgroundColor:
                              const Color.fromARGB(255, 69, 108, 251),
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '''if u didn't have account.
       Click on Sign Up''',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(130, 45),
                          backgroundColor:
                              const Color.fromARGB(255, 69, 108, 251),
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widgetApp(
                            Icon(
                              Icons.facebook,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              Icons.abc,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
