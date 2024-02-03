import 'package:flutter/material.dart';
import 'package:untitled/extra.dart';

class PrCla extends StatefulWidget {
  const PrCla({super.key});

  @override
  State<PrCla> createState() => _PrClaState();
}

class _PrClaState extends State<PrCla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: Text(
              'Multi',
              style: TextStyle(fontSize: 80, color: Colors.red),
            )),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ExtraClass()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green
                    )),
                child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
