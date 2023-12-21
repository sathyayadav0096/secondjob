import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model_three.dart';

class CallThree extends StatefulWidget {
  const CallThree({super.key});

  @override
  State<CallThree> createState() => _CallThreeState();
}

class _CallThreeState extends State<CallThree> {
  List<ThirdModelApi> listApi = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getDataThree(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('PostId: ${listApi[index].postId}',
                                  style: TextStyle(fontSize: 16)),
                              Text('ID: ${listApi[index].id}',
                                  style: TextStyle(fontSize: 16)),
                              Text('Name: ${listApi[index].name}',
                                  style: TextStyle(fontSize: 16)),
                              Text('Email: ${listApi[index].email}',
                                  style: TextStyle(fontSize: 16)),
                              Text(
                                'Body: ${listApi[index].body}',
                                style: TextStyle(fontSize: 16),
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }

  Future<List<ThirdModelApi>> getDataThree() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments?postId=1'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        listApi.add(ThirdModelApi.fromJson(index));
      }
    }
    return listApi;
  }
}
