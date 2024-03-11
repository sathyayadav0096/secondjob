import 'package:flutter/material.dart';

class ContScreens extends StatefulWidget {
  const ContScreens({super.key});

  @override
  State<ContScreens> createState() => _ContState();
}

class _ContState extends State<ContScreens> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int a = 1; a < 5; a++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red)),
                        child: const Center(
                            child: Text(
                          'Appbar',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
