import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Linear Gradient Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepOrange,Colors.blue],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topCenter
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
