// import 'package:flutter/material.dart';
//
// import 'calls_page.dart';
// import 'camera_page.dart';
// import 'chats_page.dart';
// import 'home_page.dart';
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int _selectedIndex = 0; // Set the default index to 4 (the index of 'App' in _pages)
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   static List<Widget> _pages = <Widget>[
//     CallsPage(),
//     CameraPage(),
//     ChatsPage(),
//     HomePage(),
//     App(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _pages.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.white,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.purple,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.call),
//             label: 'Calls',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.camera),
//             label: 'Camera',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat),
//             label: 'Chats',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.safety_check),
//               label: 'Safety')
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
//
// class App extends StatefulWidget {
//   const App({Key? key});
//
//   @override
//   State<App> createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellow,
//       body: Center(
//         child: Text(
//           'Hello',
//           style: TextStyle(color: Colors.red),
//         ),
//       ),
//     );
//   }
// }
