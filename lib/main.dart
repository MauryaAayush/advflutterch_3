import 'package:flutter/material.dart';

import 'Screens/connectivity_plus(lec-1)/views/MainScreen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConnetivityScreen(),
    );
  }
}
