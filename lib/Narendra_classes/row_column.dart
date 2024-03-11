import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child:
        // top to bottom
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Application'),
            Text('Computer'),
            Text('Laptop'),
            SizedBox(height: 40),

            // left to rht
            Row(
              children: [
                Text('Data'),
                SizedBox(width: 25),
                Text('Mobile'),
                SizedBox(width: 25),
                Text('Mobile'),
                SizedBox(width: 25),
                Text('Mobile'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
