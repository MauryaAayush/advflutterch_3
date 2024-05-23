import 'package:advflutterch_3/Screens/InAppWebView(lec-2)/Proivider/inAppWebView_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/InAppWebView(lec-2)/views/InAppWebView.dart';
import 'Screens/connectivity_plus(lec-1)/views/MainScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MainProvider(),)
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InAppWebViewScreen(),
    );
  }
}
