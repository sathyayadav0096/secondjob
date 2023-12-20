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
                itemCount: listName.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      // height: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'User ID: ${listName[index].userId}',
                              style: const TextStyle(fontSize: 15),
                              maxLines: 2,
                            ),
                            const Divider(thickness: 3),
                            Text('ID: ${listName[index].id}'),
                            const Divider(thickness: 3),
                            Text(
                              'Body: ${listName[index].body}',
                              style: const TextStyle(fontSize: 15),
                              maxLines: 2,
                            ),
                            const Divider(thickness: 3),
                            Text(
                              'Title: ${listName[index].title}',
                              style: const TextStyle(fontSize: 15),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return const Text('There is no data');
          }),
    );
  }

  Future<List<ApiModel>> getData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
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
