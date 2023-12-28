import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/provider_one.dart';
import 'package:untitled/reverse_string/reverse_string.dart';

void main() {
  runApp(MaterialApp(
    home: ReverseString(),
  )
      // MultiProvider(
      //     providers: [ChangeNotifierProvider(create: (_) => Counter())],
      //     child:  ReverseStringWidget()),
      );
}

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => Counter()),
//       ],
//       child: const ProviderClass(),
//     ),
//   );
// }

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
                    child: Center(
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
