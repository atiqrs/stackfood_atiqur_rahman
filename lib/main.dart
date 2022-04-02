import 'package:flutter/material.dart';
import 'features/home/presentation/pages/getting_started_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Food',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const GettingStartHome(),
    );
  }
}
