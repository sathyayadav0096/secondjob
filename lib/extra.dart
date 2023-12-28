import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _postController = TextEditingController();
  String _getResult = '';
  String _postResult = '';

  Future<void> _getExample() async {
    final response = await http.get(Uri.parse('https://your-api-endpoint.com/get_example?param_name=value'));

    if (response.statusCode == 200) {
      setState(() {
        _getResult = 'GET request successful: ${response.body}';
      });
    } else {
      setState(() {
        _getResult = 'GET request failed with status: ${response.statusCode}';
      });
    }
  }

  Future<void> _postExample() async {
    final response = await http.post(
      Uri.parse('https://your-api-endpoint.com/post_example'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'key': _postController.text}),
    );

    if (response.statusCode == 200) {
      setState(() {
        _postResult = 'POST request successful: ${response.body}';
      });
    } else {
      setState(() {
        _postResult = 'POST request failed with status: ${response.statusCode}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter HTTP Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _getExample,
              child: Text('Make GET Request'),
            ),
            SizedBox(height: 20),
            Text(_getResult),
            SizedBox(height: 40),
            TextField(
              controller: _postController,
              decoration: InputDecoration(labelText: 'Enter data for POST request'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _postExample,
              child: Text('Make POST Request'),
            ),
            SizedBox(height: 20),
            Text(_postResult),
          ],
        ),
      ),
    );
  }
}
