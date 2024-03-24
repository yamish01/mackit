import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  var _currentPage = 0;
  var pageController = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                Stack(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/car2.jpg"),
                              fit: BoxFit.cover),
                        )),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(178, 0, 0, 0),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(50),
                      child: Text(
                        "MAC",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 5),
                                  color: Color.fromARGB(255, 6, 50, 85))
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(80),
                      child: Text(
                        "KIT",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 5),
                                  color: Color.fromARGB(255, 6, 50, 85)),
                            ]),
                      ),
                    ),
                  ],
                ),
                Container()
              ],
            ),
          )
        ],
      ),
    );
  }
}
