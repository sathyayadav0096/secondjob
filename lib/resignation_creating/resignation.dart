import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Resignation extends StatefulWidget {
  const Resignation({super.key});

  @override
  State<Resignation> createState() => _ResignationState();
}

class _ResignationState extends State<Resignation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back),
            Row(
              children: [
                Icon(Icons.archive_outlined),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.delete_outline),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.mail_outline),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.more_vert)
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Resignation!!',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 22,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black26,
                          ),
                          child: const Center(
                              child: Text(
                            'Inbox',
                            style: TextStyle(fontSize: 13),
                          ))),
                    ],
                  ),
                  const Icon(
                    Icons.star_outline,
                    size: 18,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: const Center(
                      child: Text(
                        'D',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'deepika.g@vipany...',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            'to harish.k',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Column(
                    children: [
                      Text('12:30 PM'),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 18, left: 34),
                    child: Row(
                      children: [
                        Icon(
                          Icons.sentiment_satisfied,
                          size: 19,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.reply_outlined,
                          size: 19,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 19,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 4, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Harish,',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      'Through this letter, I here by announce my resignation\nfrom the position of Talent Acquisition Executive.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'It has been a pleasure working with you and entire team\nfor past 5months. In my time I have grown professionally.',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'I would like to thank you for being a supportive manager.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please consider my last working day as 29-02-2024.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Expecting smooth Exit. Kindly do the needful.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Thanks & Regards\nDeepika',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: .5,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: const Center(
                      child: Text(
                        'S',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Harish.k@vipany...',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text('3:30 PM')
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'to deepika.g',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 18, left: 44),
                    child: Row(
                      children: [
                        Icon(
                          Icons.sentiment_satisfied,
                          size: 19,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.reply_outlined,
                          size: 19,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 19,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 4, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi Deepika', style: TextStyle(fontSize: 12)),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                        'We are accepting your resignatioon we are ok to relieve you on 29-02-2024',
                        style: TextStyle(fontSize: 12)),
                    SizedBox(height: 10),
                    Text(
                      'All the best for your future endeavours.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 35),
                    Text(
                      'Thanks & Regards\nHarish',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.keyboard_return,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Reply')
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.reply_all,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Reply all')
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.forward_outlined,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Forward all')
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
