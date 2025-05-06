import 'dart:async';
import 'dart:convert';

import 'package:ecommerceapp/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'router/app_router.dart' as router;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
String activeRouteName = ""; // to get the route name

Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));

    runApp(const MyApp());
  }, (error, stack) => ());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: TextScaler.linear(1.0)),
          child: child!,
        );
      },
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Satguru Creations',
      theme: TAppTheme.lightTheme,
      //on generate will automatically takes first route
      onGenerateRoute: router.generateRoute,
    );
  }
}
