import 'package:flutter/material.dart';
import 'package:snapshare/presentation/ui/screens/HomeScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snap N Share',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}