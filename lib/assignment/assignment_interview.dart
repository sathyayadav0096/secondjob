import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'map.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String selectedCrop = 'Select Crop';
  TextEditingController varietyController = TextEditingController();
  String selectedKG = 'kg';
  TextEditingController kgController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  String selectNote = 'Write something';
  XFile? _image;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade800,
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 12,
              ),
            ),
          ),
        ),
        title: const Text(
          'Sell Produce',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Type of Crop', style: TextStyle(fontSize: 14)),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        selectedCrop,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  DropdownButton<String>(
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCrop = newValue!;
                      });
                    },
                    items: <String>[
                      '1',
                      '2',
                      '3',
                      '4',
                      '5',
                      '6',
                      '7',
                      '8',
                      '9',
                      '10'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            const Text('Variety', style: TextStyle(fontSize: 14)),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: 40,
                color: Colors.white,
                child: TextField(
                  controller: varietyController,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Variety of Product',
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Text('Expected Quantity', style: TextStyle(fontSize: 14)),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      height: 40,
                      color: Colors.white,
                      child: TextField(
                        controller: kgController,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          hintText: 'Quantity',
                          hintStyle: TextStyle(fontSize: 12),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                selectedKG,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                          DropdownButton<String>(
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedKG = newValue!;
                              });
                            },
                            items: <String>[
                              '5',
                              '10',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text('Price (per Kg)', style: TextStyle(fontSize: 14)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 40,
                color: Colors.white,
                child: TextField(
                  controller: kgController,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Type your price',
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Text('Note', style: TextStyle(fontSize: 14)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 40,
                color: Colors.white,
                child: TextField(
                  controller: noteController,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Write something',
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Text('Images', style: TextStyle(fontSize: 14)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: InkWell(
                      onTap: _pickImage,
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: SizedBox(
                                height: 90,
                                width: 110,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: Image(
                                        image: AssetImage('assets/pic one.jpg'),
                                      ),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    // Assuming you want to conditionally show either an Icon or a File image
                                    _image == null
                                        ? Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Icon(
                                              Icons.add_circle_outline_rounded,
                                              size: 35,
                                              color: Colors.blue,
                                            ),
                                          )
                                        : Image.file(File(_image!.path)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            const Text(
                              'Image1',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    flex: 3,
                    child: InkWell(
                      onTap: _pickImage,
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 90,
                                width: 110,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: Image(
                                        image: AssetImage('assets/pic two.webp'),
                                      ),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    // Assuming you want to conditionally show either an Icon or a File image
                                    _image == null
                                        ? Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Icon(
                                              Icons.add_circle_outline_rounded,
                                              size: 35,
                                              color: Colors.blue,
                                            ),
                                          )
                                        : Image.file(File(_image!.path)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              const Text(
                                'Image2',
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 4, right: 4, top: 50, bottom: 15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen.shade700,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Add my Produce',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MapScreen()));
              },
              child: Center(
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen.shade700,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
