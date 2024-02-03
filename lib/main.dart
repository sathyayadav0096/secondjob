import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled/allScreens/clsss.dart';
import 'package:untitled/extra.dart';
import 'package:untitled/multi_provider/multi_provider.dart';
import 'package:untitled/provider/provider.dart';

void main() {
  runApp(GetMaterialApp(
    home: MultiProvider(
      providers: [
        Provider<PrCla>(create: (context) => PrCla()),
        Provider<ExtraClass>(create: (context) => ExtraClass()),
      ],
      child: PrCla(),
    ),
  ));
}
