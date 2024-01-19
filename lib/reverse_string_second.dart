import 'package:flutter/material.dart';

class Reverse extends StatelessWidget {
  const Reverse({super.key});

  @override
  Widget build(BuildContext context) {
    String original = 'Mekala';
    List<String> character = original.split('');
    String ReverseString = character.reversed.join();

    return Scaffold(body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Reverse String: $ReverseString'),
            SizedBox(height: 15),
            Text('Correct String: $original')
          ],
        ),
      ),
      );
  }
}
