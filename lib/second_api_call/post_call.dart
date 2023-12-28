import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts'; // Replace with your API endpoint

  Future<void> postData() async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'key1': 'value1',
        'key2': 'value2',
      }),
    );

    if (response.statusCode == 200) {
      // Handle successful response
      print('Response data: ${response.body}');
    } else {
      // Handle error response
      print('Error: ${response.reasonPhrase}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter POST API Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            postData();
          },
          child: Text('Make POST Request'),
        ),
      ),
    );
  }
}
