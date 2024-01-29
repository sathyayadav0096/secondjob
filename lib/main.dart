import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/razorpay/razorpay_account.dart';
import 'package:untitled/razorpay/second_practice_razorpay.dart';
import 'package:untitled/remove_void_space/remove_void_space.dart';
import 'package:untitled/reusable_widget/reusable_widget_or_button.dart';
import 'package:untitled/reverse_string_second.dart';
import 'package:untitled/whats/contacts_list.dart';

import 'api_call/api_call_1/final_api_follow this.dart';
import 'api_call/api_call_2/api_call.dart';
import 'assignment/assignment_interview.dart';
import 'extra_second.dart';
import 'button_click_next_name_shows.dart';


void main() {
  runApp( GetMaterialApp(debugShowCheckedModeBanner: false,
    home: FirstName(),
  )

      // MultiProvider(
      //     providers: [ChangeNotifierProvider(create: (_) => Counter())],
      //     child:  ReverseStringWidget()),
      );
}

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                const Text('Name'),
                const Text('Surname'),
                const Text('Dob'),
                const Text('Age'),
                const SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: const Center(
                        child: Text(
                      "Sahre",
                      style: TextStyle(color: Colors.white),
                    )),
                    height: 30,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Container(
                  child: const Center(
                      child: Text(
                    "Navigation",
                    style: TextStyle(color: Colors.white),
                  )),
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: const Center(
                      child: Text(
                    "Mesage",
                    style: TextStyle(color: Colors.white),
                  )),
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
