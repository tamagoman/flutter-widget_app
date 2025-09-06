import 'dart:ffi';

import 'package:flutter/material.dart';


class ProgressScreen extends StatelessWidget {
  static const String name = 'progress_screen';
  
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 50),
          Text('Circular Progress Indicator'),
          SizedBox(height: 20),
          CircularProgressIndicator(
            color: Colors.indigo,
            strokeWidth: 2,
            backgroundColor: Colors.black12,
          ),
          SizedBox(height: 20),
          Text('Circular y Linear Controlados'),
          SizedBox(height: 20),
          _ControllerProgressIndicators(),
          // CircularProgressIndicator(
          //   color: Colors.indigo,
          //   strokeWidth: 2,
          //   value: 0.7,
          // ),
        ],
      ),
    );
  }
}

class _ControllerProgressIndicators extends StatelessWidget {
  const _ControllerProgressIndicators();
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic( const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progressValue, strokeWidth: 2, backgroundColor: Colors.black12),
              const SizedBox(width: 20,),
              Expanded(
                child: LinearProgressIndicator(value: progressValue)
              )
            ],
          )
        
        );
      }
    );
  }
}
