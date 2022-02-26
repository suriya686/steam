import 'package:flutter/material.dart';
import 'package:steam/interface.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steam',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}