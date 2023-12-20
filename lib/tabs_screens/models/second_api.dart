import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'SecondApiModel.dart';

class ScreenSecond extends StatefulWidget {
  const ScreenSecond({super.key});

  @override
  State<ScreenSecond> createState() => _ScreenSecondState();
}

class _ScreenSecondState extends State<ScreenSecond> {
  List<ApiData> listNameTewo = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getDataTwo(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: listNameTewo.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PostID: ${listNameTewo[index].postId}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text('ID: ${listNameTewo[index].id}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            Text('Name: ${listNameTewo[index].name}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            Text('Email: ,${listNameTewo[index].email}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            Text(
                              'Body: ,${listNameTewo[index].body}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
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
            return const Center(
              child: Text('Loading...'),
            );
          }),
    );
  }

  Future<List<ApiData>> getDataTwo() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments?postId=1'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        listNameTewo.add(ApiData.fromJson(index));
      }
      return listNameTewo;
    } else {
      return listNameTewo;
    }
  }
}
