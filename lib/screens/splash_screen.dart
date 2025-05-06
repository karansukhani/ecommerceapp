import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:ecommerceapp/constants/image_strings.dart';
import 'package:ecommerceapp/shared_preference/pref_key.dart';
import 'package:ecommerceapp/shared_preference/shared_pref.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../router/routing_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = false; // to check that user is login or not
  int currentVersionCode = 0; // to get current version
  String poId = '';
  bool isBranchIoEnabled = true;

  @override
  void initState() {
    super.initState();
    redirectToScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15.0),
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AssetConstants.lightAppLogo,
                fit: BoxFit.cover,
                height: 120.0,
                width: 120.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //This method redirects to the respective screen according to the data got
  Future<void> redirectToScreen() async {
    bool isLogin = await SharedPref.getBool(PrefKey.isLogin);
    Timer(const Duration(seconds: 1), () async {
      if (isLogin) {
        //used for splash screen when version update and if we need to logout.
        await SharedPref.setInt(PrefKey.currentAppVersion, currentVersionCode);

        Navigator.pushReplacementNamed(context, homeScreenRoute);
      } else {
        Navigator.pushReplacementNamed(context, loginScreenRoute);
      }
    });
  }
}
