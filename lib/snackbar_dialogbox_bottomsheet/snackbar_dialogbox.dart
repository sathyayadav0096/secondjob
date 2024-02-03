import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/multi_provider/multi_provider.dart';

class BarSnack extends StatefulWidget {
  const BarSnack({super.key});

  @override
  State<BarSnack> createState() => _BarSnackState();
}

class _BarSnackState extends State<BarSnack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Column(
        children: [
          TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
                Get.showSnackbar(const GetSnackBar(
                  backgroundColor: Colors.blue,
                  duration: Duration(seconds: 1),
                  title: 'Please Wait',
                  message: 'it takes some times please wait for some time',
                ));
              },
              child: const Text('Get Snack')),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Get.defaultDialog(
                      cancel: Text('No'),
                      onCancel: () {
                        Get.back();
                      },
                      confirm: Text('Confirm'),
                      onConfirm: () {
                        Get.to(PrCla());
                      },
                      title: 'Are Sure!',
                      middleText: 'Please Select Stay or Exit');
                },
                child: const Text('Dialog Box')),
          ),
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: Get.height *0.1,
                      width: Get.width *0.8,
                      color: Colors.white,
                      child: Center(child: const Text('Welcome Bottom Sheet'))),
                );
              },
              child: const Text('Bottom Sheet'))
        ],
      ),
    );
  }
}
