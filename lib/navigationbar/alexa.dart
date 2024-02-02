import 'package:flutter/material.dart';

class Alexa extends StatelessWidget {
  const Alexa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alexa'),
        backgroundColor: Colors.white,
      ),
      body: const Center(child: Text('this is Aleca page')),
    );
  }
}