import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled/firebase/auth_email.dart';
import 'package:untitled/multi_provider/multi_provider.dart';
import 'package:untitled/snackbar_dialogbox_bottomsheet/snackbar_dialogbox_bottomshee.dart';
import 'package:untitled/validations/validations_getx.dart';

import 'coderunning_ios_orandroid/ios_orandroid.dart';
import 'getx_state_management/state_management/state_management.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          Provider<PrCla>(create: (context) => const PrCla()),
          Provider<AuthScreenState>(
              create: (context) => const AuthScreenState()),
          Provider<SnackBottomDialogBox>(create: (context) => const SnackBottomDialogBox()),
          Provider<CodeRunningIosAndroid>(create: (context) =>  CodeRunningIosAndroid()),
          Provider<ValidationsUsingGetx>(create: (context) =>  ValidationsUsingGetx()),
          Provider<StateManagementScreen>(create: (context) =>  StateManagementScreen()),
        ],
        // which page we want to run and see in the out put here we need to specify the class name
        child:  StateManagementScreen(),
      ),
    ),
  );
}
