import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/api_call_third_delete/model.dart';
import 'package:http/http.dart' as http;

class ApCalThree extends StatefulWidget {
  const ApCalThree({super.key});

  @override
  State<ApCalThree> createState() => _ApCalThreeState();
}

class _ApCalThreeState extends State<ApCalThree> {
  List<PullApiData> pullApiData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apiFunction(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: pullApiData.length
              ,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${pullApiData[index].id}'),
                          Text(pullApiData[index].title),
                          Text('${pullApiData[index].userId}'),
                          Text(pullApiData[index].body, maxLines: 2)
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<List<PullApiData>> apiFunction() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        for (Map<String, dynamic> index in data) {
          pullApiData.add(PullApiData.fromJson(index));
        }
      }
      return pullApiData;
    } catch (e) {
      print('Check This Error: $e');
      return [];
    }
    return pullApiData;
  }
}
