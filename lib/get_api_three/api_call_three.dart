import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../fourth_get_api/fourth_api_model.dart';

class CallThree extends StatefulWidget {
  const CallThree({Key? key}) : super(key: key);

  @override
  State<CallThree> createState() => _CallThreeState();
}

class _CallThreeState extends State<CallThree> {
  List<ThirdModelApi> listApi = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(  // this is mandatory
        future: getDataThree(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: listApi.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('PostId: }',
                            style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<void> getDataThree() async {
    try {
      final response = await http.get(Uri.parse('https://postman-echo.com/get?foo1=bar1&foo2=bar2'));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as Map<String, dynamic>;
        setState(() {
          listApi.add(ThirdModelApi.fromJson(data));
        });
      } else {
        // Handle error or throw an exception
        throw Exception('Failed to load data');
      }
    } catch (error) {
      // Handle the error here, you can log it or show a user-friendly message
      print('Error in getDataThree: $error');
    }
  }


// Future<void> getDataThree() async {
  //   final response = await http.get(Uri.parse('https://postman-echo.com/get?foo1=bar1&foo2=bar2'));
  //   if (response.statusCode == 200) {
  //     var data = jsonDecode(response.body) as Map<String, dynamic>;
  //     setState(() {
  //       listApi.add(ThirdModelApi.fromJson(data));
  //     });
  //   } else {
  //     // Handle error or throw an exception
  //     throw Exception('Failed to load data');
  //   }
  // }

}
