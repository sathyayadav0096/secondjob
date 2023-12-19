import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../tabs_screens/models/ApiModel.dart';

class ApiClass extends StatefulWidget {
  const ApiClass({super.key});

  @override
  State<ApiClass> createState() => _ApiClassState();
}

class _ApiClassState extends State<ApiClass> {
  List<ApiModel> listName = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 120,
                      color: Colors.green,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Title',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text('stage two'),
                            Text('stage three'),
                            Text('stage four')
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return Text('There is no data');
          }),
    );
  }

  Future<List<ApiModel>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        listName.add(ApiModel.fromJson(index));
      }
      return listName;
    } else {
      return listName;
    }
  }
}
