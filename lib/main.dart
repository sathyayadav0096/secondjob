import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/provider.dart';
import 'package:untitled/provider/providr_ritchtext.dart';

void main() {
  runApp(GetMaterialApp(
    home: ChangeNotifierProvider(
        create: (context) => ClassPrd(), child: Prd()),
  ));
}
