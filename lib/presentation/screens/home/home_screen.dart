import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
        centerTitle: false,
      ),
      // body: Center(
      //   child: Text(
      //     'Home Screen',
      //     style: Theme.of(context).textTheme.headlineMedium,
      //   ),
      // ),
    );
  }
}