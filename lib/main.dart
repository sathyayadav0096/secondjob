import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled/firebase/auth_email.dart';
import 'package:untitled/multi_provider/multi_provider.dart';
import 'package:untitled/snackbar_dialogbox_bottomsheet/snackbar_dialogbox_bottomshee.dart';

import 'extra.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          Provider<PrCla>(create: (context) => const PrCla()),
          Provider<AuthScreenState>(
              create: (context) => const AuthScreenState()),
          Provider<SnackBottomDialogBox>(
              create: (context) => const SnackBottomDialogBox()),
        ],
        // which page we want to run and see in the out put here we need to specify the class name
        child: const SnackBottomDialogBox(),
      ),
    ),
  );
}
