import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'button_click_next_name_shows.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstSecondName(),
  )

      // MultiProvider(
      //     providers: [ChangeNotifierProvider(create: (_) => Counter())],
      //     child:  ReverseStringWidget()),
      );
}
