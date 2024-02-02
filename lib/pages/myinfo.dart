import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Info'),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(child: Text('this is My info page')),
    );
  }
}