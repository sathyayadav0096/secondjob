// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class AssignMentData extends StatefulWidget {
//   const AssignMentData({Key? key});
//
//   @override
//   State<AssignMentData> createState() => _AssignMentDataState();
// }
//
// class _AssignMentDataState extends State<AssignMentData> {
//   List<String> metals = ['Gold', 'Silver', 'Platinum'];
//   //metals[a] == 'Gold' ? goldColor :  metals[a] == 'Silver' : silverColorplatinumColor
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade200,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 SingleChildScrollView(
//                   child: Container(
//                     height: 260,
//                     width: double.infinity,
//                     color: Colors.blueAccent,
//                     child: Padding(
//                       padding:
//                       const EdgeInsets.only(top: 20, left: 15, right: 15),
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Row(
//                                 children: [
//                                   Icon(
//                                     Icons.attach_money,
//                                     color: Colors.white,
//                                     size: 40,
//                                   ),
//                                   Text(
//                                     '22,650.51',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white,
//                                         fontSize: 30),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 150,
//                                     decoration: BoxDecoration(
//                                         color: const Color(0xFF083663),
//                                         borderRadius: BorderRadius.circular(25)),
//                                     child: const Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Text(
//                                           '0.97',
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 18,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         Icon(
//                                           Icons.percent,
//                                           color: Colors.white,
//                                           size: 20,
//                                         ),
//                                         Icon(
//                                           Icons.arrow_drop_up,
//                                           color: Colors.green,
//                                           size: 40,
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Account Value',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               Text(
//                                 'Since lase purchase',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           const Divider(
//                             color: Colors.white,
//                           ),
//                           const SizedBox(height: 10),
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Cash Balance',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               Text(
//                                 'Metal Holdings',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 2),
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.attach_money,
//                                     color: Colors.white,
//                                     size: 25,
//                                   ),
//                                   Text(
//                                     '384.87',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white,
//                                         fontSize: 20),
//                                   ),
//                                   Icon(
//                                     Icons.error_outline,
//                                     color: Colors.white,
//                                     size: 15,
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.attach_money,
//                                     color: Colors.white,
//                                     size: 25,
//                                   ),
//                                   Text(
//                                     '22,265.64',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white,
//                                         fontSize: 20),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 ListView.builder(
//                     itemCount: 3,
//                     itemBuilder: (context, index) {
//                       String metal = metals[index];
//                       return Padding(
//                         padding: const EdgeInsets.only(top: 200, left: 18, right: 18),
//                         child: Column(
//                           children: [
//                             Container(
//                               height: 150,
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(6)),
//                               child: Padding(
//                                 padding: const EdgeInsets.only(
//                                     top: 15, left: 15, right: 15),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Container(
//                                               decoration: BoxDecoration(
//                                                   color: Colors.yellow.shade100,
//                                                   borderRadius:
//                                                   BorderRadius.circular(25)),
//                                               child: const Padding(
//                                                 padding: EdgeInsets.all(13),
//                                                 child: Icon(
//                                                   Icons.thumb_up,
//                                                   color: Colors.yellow,
//                                                 ),
//                                               ),
//                                             ),
//                                             const SizedBox(width: 7),
//                                             Column(
//                                               crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                               children: [
//                                                 InkWell(
//                                                   onTap:(){},
//                                                   splashColor: Colors.yellow,
//                                                   child: const Text(
//                                                     'Gold',
//                                                     style: TextStyle(
//                                                         fontSize: 20,
//                                                         color: Colors.yellow,
//                                                         fontWeight: FontWeight.bold),
//                                                   ),
//                                                 ),
//                                                 const Row(
//                                                   children: [
//                                                     Text(
//                                                       '11:050 oz',
//                                                       style: TextStyle(
//                                                           fontSize: 12,
//                                                           color: Colors.grey),
//                                                     ),
//                                                   ],
//                                                 )
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                         const Column(
//                                           crossAxisAlignment: CrossAxisAlignment.end,
//                                           children: [
//                                             Row(
//                                               children: [
//                                                 Icon(
//                                                   Icons.attach_money,
//                                                   size: 25,
//                                                 ),
//                                                 Text(
//                                                   '22,265.64',
//                                                   style: TextStyle(
//                                                       fontWeight: FontWeight.bold,
//                                                       fontSize: 20),
//                                                 ),
//                                               ],
//                                             ),
//                                             Row(
//                                               children: [
//                                                 Text(
//                                                   '0.97',
//                                                   style: TextStyle(
//                                                       fontSize: 12,
//                                                       color: Colors.grey),
//                                                 ),
//                                                 Icon(
//                                                   Icons.percent,
//                                                   size: 14,
//                                                   color: Colors.grey,
//                                                 )
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 2),
//                                     const Divider(
//                                       color: Colors.grey,
//                                       thickness: 0.6,
//                                     ),
//                                     const SizedBox(height: 2),
//                                     const Row(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           'Cash Balance',
//                                           style: TextStyle(
//                                             fontSize: 14,
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                         Text(
//                                           'Change',
//                                           style: TextStyle(
//                                             fontSize: 14,
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 4),
//                                     const Row(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Icon(
//                                               Icons.attach_money,
//                                               size: 24,
//                                             ),
//                                             Text(
//                                               '1,999.00',
//                                               style: TextStyle(fontSize: 20),
//                                             ),
//                                           ],
//                                         ),
//                                         Text(
//                                           '-0.4 %',
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             color: Colors.brown,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 20),
//
//                             // Container(
//                             //   height: 150,
//                             //   width: double.infinity,
//                             //   decoration: BoxDecoration(
//                             //       color: Colors.white,
//                             //       borderRadius: BorderRadius.circular(6)),
//                             //   child: Padding(
//                             //     padding: const EdgeInsets.only(
//                             //         top: 15, left: 15, right: 15),
//                             //     child: Column(
//                             //       crossAxisAlignment: CrossAxisAlignment.start,
//                             //       children: [
//                             //         Row(
//                             //           mainAxisAlignment:
//                             //               MainAxisAlignment.spaceBetween,
//                             //           children: [
//                             //             Row(
//                             //               children: [
//                             //                 Container(
//                             //                   decoration: BoxDecoration(
//                             //                       color: Colors.grey.shade300,
//                             //                       borderRadius:
//                             //                           BorderRadius.circular(25)),
//                             //                   child: const Padding(
//                             //                     padding: EdgeInsets.all(13),
//                             //                     child: Icon(
//                             //                       Icons.thumb_up,
//                             //                       color: Colors.black54,
//                             //                     ),
//                             //                   ),
//                             //                 ),
//                             //                 const SizedBox(width: 7),
//                             //                  Column(
//                             //                   crossAxisAlignment:
//                             //                       CrossAxisAlignment.start,
//                             //                   children: [
//                             //                     InkWell(
//                             //                       onTap:(){},
//                             //                       splashColor: Colors.grey,
//                             //                       child: const Text(
//                             //                         'Silver',
//                             //                         style: TextStyle(
//                             //                             fontSize: 20,
//                             //                             color: Colors.black54,
//                             //                             fontWeight: FontWeight.bold),
//                             //                       ),
//                             //                     ),
//                             //                     const Row(
//                             //                       children: [
//                             //                         Text(
//                             //                           '0.000 oz',
//                             //                           style: TextStyle(
//                             //                               fontSize: 12,
//                             //                               color: Colors.grey),
//                             //                         ),
//                             //                       ],
//                             //                     )
//                             //                   ],
//                             //                 ),
//                             //               ],
//                             //             ),
//                             //             const Column(
//                             //               crossAxisAlignment: CrossAxisAlignment.end,
//                             //               children: [
//                             //                 Row(
//                             //                   children: [
//                             //                     Icon(
//                             //                       Icons.attach_money,
//                             //                       size: 25,
//                             //                     ),
//                             //                     Text(
//                             //                       '22,265.64',
//                             //                       style: TextStyle(
//                             //                           fontWeight: FontWeight.bold,
//                             //                           fontSize: 20),
//                             //                     ),
//                             //                   ],
//                             //                 ),
//                             //                 Row(
//                             //                   children: [
//                             //                     Text(
//                             //                       '0.97',
//                             //                       style: TextStyle(
//                             //                           fontSize: 12,
//                             //                           color: Colors.grey),
//                             //                     ),
//                             //                     Icon(
//                             //                       Icons.percent,
//                             //                       size: 14,
//                             //                       color: Colors.grey,
//                             //                     )
//                             //                   ],
//                             //                 ),
//                             //               ],
//                             //             ),
//                             //           ],
//                             //         ),
//                             //         const SizedBox(height: 2),
//                             //         const Divider(
//                             //           color: Colors.grey,
//                             //           thickness: 0.6,
//                             //         ),
//                             //         const SizedBox(height: 2),
//                             //         const Row(
//                             //           mainAxisAlignment:
//                             //               MainAxisAlignment.spaceBetween,
//                             //           children: [
//                             //             Text(
//                             //               'Cash Balance',
//                             //               style: TextStyle(
//                             //                 fontSize: 14,
//                             //                 color: Colors.grey,
//                             //               ),
//                             //             ),
//                             //             Text(
//                             //               'Change',
//                             //               style: TextStyle(
//                             //                 fontSize: 14,
//                             //                 color: Colors.grey,
//                             //               ),
//                             //             ),
//                             //           ],
//                             //         ),
//                             //         const SizedBox(height: 4),
//                             //         const Row(
//                             //           mainAxisAlignment:
//                             //               MainAxisAlignment.spaceBetween,
//                             //           children: [
//                             //             Row(
//                             //               children: [
//                             //                 Icon(
//                             //                   Icons.attach_money,
//                             //                   size: 24,
//                             //                 ),
//                             //                 Text(
//                             //                   '1,999.00',
//                             //                   style: TextStyle(fontSize: 20),
//                             //                 ),
//                             //               ],
//                             //             ),
//                             //             Text(
//                             //               '-0.4 %',
//                             //               style: TextStyle(
//                             //                 fontSize: 20,
//                             //                 color: Colors.brown,
//                             //               ),
//                             //             ),
//                             //           ],
//                             //         ),
//                             //       ],
//                             //     ),
//                             //   ),
//                             // ),
//                             // const SizedBox(height: 20),
//                             // Container(
//                             //   height: 150,
//                             //   width: double.infinity,
//                             //   decoration: BoxDecoration(
//                             //       color: Colors.white,
//                             //       borderRadius: BorderRadius.circular(6)),
//                             //   child: Padding(
//                             //     padding: const EdgeInsets.only(
//                             //         top: 15, left: 15, right: 15),
//                             //     child: Column(
//                             //       crossAxisAlignment: CrossAxisAlignment.start,
//                             //       children: [
//                             //         Row(
//                             //           mainAxisAlignment:
//                             //               MainAxisAlignment.spaceBetween,
//                             //           children: [
//                             //             Row(
//                             //               children: [
//                             //                 Container(
//                             //                   decoration: BoxDecoration(
//                             //                       color: Colors.purple.shade100,
//                             //                       borderRadius:
//                             //                           BorderRadius.circular(25)),
//                             //                   child: const Padding(
//                             //                     padding: EdgeInsets.all(13),
//                             //                     child: Icon(
//                             //                       Icons.thumb_up,
//                             //                       color: Colors.purple,
//                             //                     ),
//                             //                   ),
//                             //                 ),
//                             //                 const SizedBox(width: 7),
//                             //                  Column(
//                             //                   crossAxisAlignment:
//                             //                       CrossAxisAlignment.start,
//                             //                   children: [
//                             //                     InkWell(
//                             //                       onTap:(){},
//                             //                       splashColor: Colors.purple,
//                             //                       child: const Text(
//                             //                         'Platinum',
//                             //                         style: TextStyle(
//                             //                             fontSize: 20,
//                             //                             color: Colors.purple,
//                             //                             fontWeight: FontWeight.bold),
//                             //                       ),
//                             //                     ),
//                             //                     const Row(
//                             //                       children: [
//                             //                         Text(
//                             //                           '11:050 oz',
//                             //                           style: TextStyle(
//                             //                               fontSize: 12,
//                             //                               color: Colors.grey),
//                             //                         ),
//                             //                       ],
//                             //                     )
//                             //                   ],
//                             //                 ),
//                             //               ],
//                             //             ),
//                             //             const Column(
//                             //               crossAxisAlignment: CrossAxisAlignment.end,
//                             //               children: [
//                             //                 Row(
//                             //                   children: [
//                             //                     Icon(
//                             //                       Icons.attach_money,
//                             //                       size: 25,
//                             //                     ),
//                             //                     Text(
//                             //                       '22,265.64',
//                             //                       style: TextStyle(
//                             //                           fontWeight: FontWeight.bold,
//                             //                           fontSize: 20),
//                             //                     ),
//                             //                   ],
//                             //                 ),
//                             //                 Row(
//                             //                   children: [
//                             //                     Text(
//                             //                       '0.97',
//                             //                       style: TextStyle(
//                             //                           fontSize: 12,
//                             //                           color: Colors.grey),
//                             //                     ),
//                             //                     Icon(
//                             //                       Icons.percent,
//                             //                       size: 14,
//                             //                       color: Colors.grey,
//                             //                     )
//                             //                   ],
//                             //                 ),
//                             //               ],
//                             //             ),
//                             //           ],
//                             //         ),
//                             //         const SizedBox(height: 2),
//                             //         const Divider(
//                             //           color: Colors.grey,
//                             //           thickness: 0.6,
//                             //         ),
//                             //         const SizedBox(height: 2),
//                             //         const Row(
//                             //           mainAxisAlignment:
//                             //               MainAxisAlignment.spaceBetween,
//                             //           children: [
//                             //             Text(
//                             //               'Cash Balance',
//                             //               style: TextStyle(
//                             //                 fontSize: 14,
//                             //                 color: Colors.grey,
//                             //               ),
//                             //             ),
//                             //             Text(
//                             //               'Change',
//                             //               style: TextStyle(
//                             //                 fontSize: 14,
//                             //                 color: Colors.grey,
//                             //               ),
//                             //             ),
//                             //           ],
//                             //         ),
//                             //         const SizedBox(height: 4),
//                             //         const Row(
//                             //           mainAxisAlignment:
//                             //               MainAxisAlignment.spaceBetween,
//                             //           children: [
//                             //             Row(
//                             //               children: [
//                             //                 Icon(
//                             //                   Icons.attach_money,
//                             //                   size: 24,
//                             //                 ),
//                             //                 Text(
//                             //                   '1,999.00',
//                             //                   style: TextStyle(fontSize: 20),
//                             //                 ),
//                             //               ],
//                             //             ),
//                             //             Text(
//                             //               '-0.4 %',
//                             //               style: TextStyle(
//                             //                 fontSize: 20,
//                             //                 color: Colors.brown,
//                             //               ),
//                             //             ),
//                             //           ],
//                             //         ),
//                             //       ],
//                             //     ),
//                             //   ),
//                             // ),
//                           ],
//                         ),
//                       );
//                     }
//                 )
//               ],
//             ),
//             const Spacer(),
//             const Padding(
//               padding: EdgeInsets.only(left: 18),
//               child: Text(
//                 'Do More With OneGold',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
