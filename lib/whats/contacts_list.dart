import 'package:flutter/material.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Emp Name'),
                Text('Emp Doj'),
                Text('Emp Desg'),
                Text('Emp ID'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 33),
                  child: Column(
                    children: [
                      Text('Ajay'),
                      Text('Vishnu'),
                      Text('Sakshi'),
                      Text('Aishu')
                    ],
                  ),
                ),
                SizedBox(width: 52),
                Column(
                  children: [
                    Text('20-2-2024'),
                    Text('24-2-2024'),
                    Text('19-3-2024'),
                    Text('25-12-2020')
                  ],
                ),
                SizedBox(width: 45),
                Column(
                  children: [
                    Text('Flutter'),
                    Text('IOS'),
                    Text('Android'),
                    Text('Java')
                  ],
                ),
                SizedBox(width: 53),
                Column(
                  children: [
                    Text('2001'),
                    Text('2045'),
                    Text('2022'),
                    Text('1992')
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('1'),
                      SizedBox(height: 15),
                      Text('2'),
                      SizedBox(height: 15),
                      Text('3'),
                      SizedBox(height: 15),
                      Text('4'),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text('First Person'),
                        SizedBox(height: 15),
                        Text('Second person'),
                        SizedBox(height: 15),
                        Text('Third person'),
                        SizedBox(height: 15),
                        Text('Fourth person'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text('5'),
                      SizedBox(height: 15),
                      Text('6'),
                      SizedBox(height: 15),
                      Text('7'),
                      SizedBox(height: 15),
                      Text('8'),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text('Gym'),
                      SizedBox(height: 15),
                      Text('Dance'),
                      SizedBox(height: 15),
                      Text('Music'),
                      SizedBox(height: 15),
                      Text('Swimming'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
