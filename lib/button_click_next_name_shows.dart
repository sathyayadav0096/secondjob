import 'package:flutter/material.dart';

class FirstName extends StatefulWidget {
  const FirstName({super.key});

  @override
  State<FirstName> createState() => _FirstNameState();
}

class _FirstNameState extends State<FirstName> {
  bool second = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(second ? 'Sathya' : 'Mahesh'),
            TextButton(
                onPressed: () {
                  setState(() {
                    second = !second;
                  });
                },
                child: Text('Click'))
          ],
        ),
      ),
    );
  }
}
