import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled/firebase/auth_email.dart';
import 'package:untitled/multi_provider/multi_provider.dart';
import 'package:untitled/snackbar_dialogbox_bottomsheet/snackbar_dialogbox_bottomshee.dart';
import 'package:untitled/validations/validations_getx.dart';

import 'GEETHA_CLASSES/column_row.dart';
import 'api_call/api_call_1/final_api_follow this.dart';
import 'api_call/api_call_2/api_call.dart';
import 'api_call_delete_second/api_cls.dart';
import 'api_call_third_delete/api_three.dart';
import 'coderunning_ios_orandroid/ios_orandroid.dart';
import 'delete.dart';
import 'extra.dart';
import 'getx_state_management/state_management/state_management.dart';
import 'getx_storage/container.dart';
import 'linear_grident/linear_grident_second.dart';

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
          Provider<CodeRunningIosAndroid>(
              create: (context) => CodeRunningIosAndroid()),
          Provider<ValidationsUsingGetx>(
              create: (context) => ValidationsUsingGetx()),
          Provider<StateManagementScreen>(
              create: (context) => StateManagementScreen()),
          Provider<DataStorageGtx>(create: (context) => DataStorageGtx()),
          Provider<ScreenSecond>(create: (context) => ScreenSecond()),
          Provider<SecondCall>(create: (context) => SecondCall()),
          Provider<MyDatas>(create: (context) => MyDatas()),
          Provider<MyCls>(create: (context) => MyCls()),
          Provider<ClmRow>(create: (context) => ClmRow()),
          Provider<ApCalThree>(create: (context) => ApCalThree()),
        ],
        // which page we want to run and see in the out put here we need to specify the class name
        child: ApCalThree(),
      ),
    ),
  );
}
