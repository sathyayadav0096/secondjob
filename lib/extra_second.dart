import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('String Reversal'),
        ),
        body: Center(
          child: StringReversalWidget(),
        ),
      ),
    );
  }
}

class StringReversalWidget extends StatefulWidget {
  @override
  _StringReversalWidgetState createState() => _StringReversalWidgetState();
}

class _StringReversalWidgetState extends State<StringReversalWidget> {
  String originalString = 'Hello, Flutter!';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Original String: $originalString'),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Reverse the string
            String reversedString = reverseString(originalString);
            // Update the state with the reversed string
            setState(() {
              originalString = reversedString;
            });
          },
          child: Text('Reverse String'),
        ),
        SizedBox(height: 20),
        Text('Reversed String: $originalString'),
      ],
    );
  }

  String reverseString(String input) {
    // Convert the string to a list of characters, reverse it, and then join it back into a string
    return input.split('').reversed.join();
  }
}
