import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../allScreens/next_button.dart';
import 'SecondApiModel.dart';

class ScreenSecond extends StatefulWidget {
  const ScreenSecond({super.key});

  @override
  State<ScreenSecond> createState() => _ScreenSecondState();
}

class _ScreenSecondState extends State<ScreenSecond> {
  List<ApiData> listNameTwo = [];
  @override
  void initState() {
    super.initState();
    getDataTwo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getDataTwo(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: listNameTwo.length,
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
                              'PostID: ${listNameTwo[index].postId}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 14),
                            ),
                            Text('ID: ${listNameTwo[index].id}',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            Text('Name: ${listNameTwo[index].name}',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            Text('Email: ${listNameTwo[index].email}',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            Text(
                              'Body: ${listNameTwo[index].body}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 14),
                              maxLines: 2,
                            ),
                            // Text(
                            //   'Name: Email: Body: ${listNameTewo[index].name},${listNameTewo[index].email},${listNameTewo[index].body}',
                            //   style: const TextStyle(color: Colors.green),
                            // ),
                            const SizedBox(height: 35),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Text(
                                      'Body: ${listNameTwo[index].body}',);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NextButtonScreen(
                                              )));
                                },
                                child: Container(
                                  color: Colors.red,
                                  child: const SizedBox(
                                      height: 25,
                                      width: 100,
                                      child: Center(
                                          child: Text(
                                        'Next',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ))),
                                ),
                              ),
                            )
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
        listNameTwo.add(ApiData.fromJson(index));
      }
      return listNameTwo;
    } else {
      return listNameTwo;
    }
  }
}
