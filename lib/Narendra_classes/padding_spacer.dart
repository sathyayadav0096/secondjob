import 'package:flutter/material.dart';

class PadSpace extends StatefulWidget {
  const PadSpace({super.key});

  @override
  State<PadSpace> createState() => _PadSpaceState();
}

class _PadSpaceState extends State<PadSpace> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 80, top: 70, bottom: 40),
                child: Text(
                  'Computer',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Laptop',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              //Spacer(),
              Text('Mouse'),
              Spacer(),
              Row(
                children: [
                  Text('Laptop'),
                  Spacer(),
                  Text('Keyboard'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
