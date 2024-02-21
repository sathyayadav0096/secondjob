import 'package:flutter/material.dart';

class ClmRow extends StatefulWidget {
  const ClmRow({Key? key}) : super(key: key);

  @override
  State<ClmRow> createState() => _ClmRowState();
}

class _ClmRowState extends State<ClmRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      end: Alignment.bottomLeft,
                      begin: Alignment.centerRight,
                      colors: [
                    Colors.black,
                    Colors.yellow,
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
