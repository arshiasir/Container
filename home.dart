import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double numberOffset  = 0;
  double numberblurRadius = 0;
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1) ,(){
        setState(() {
          numberOffset =20;
          numberblurRadius =20;
        });
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 86, 86, 86),
      body: Center(
        child:AnimatedContainer(
          duration: Duration(seconds: 5),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 86, 86, 86),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 197, 197, 197),
                offset: Offset(-numberOffset, -numberOffset),
                blurRadius: numberblurRadius,
              ),
              BoxShadow(
                color: Color.fromARGB(255, 20, 20, 20),
                offset: Offset(numberOffset, numberOffset),
                blurRadius: numberblurRadius,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
