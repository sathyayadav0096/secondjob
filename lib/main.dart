import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/provider.dart';

void main() {
  runApp(GetMaterialApp(
    home: ChangeNotifierProvider(
        create: (context) => TimerProvider(), child: ProviderClass()),
  ));
}
