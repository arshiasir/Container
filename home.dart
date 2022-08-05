import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 86, 86, 86),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 86, 86, 86),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 197, 197, 197),
                offset: Offset(-20, -20),
                blurRadius: 30,
              ),
              BoxShadow(
                color: Color.fromARGB(255, 20, 20, 20),
                offset: Offset(20, 20),
                blurRadius: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
