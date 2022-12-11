import 'package:countdown/pages/clock_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CountDown',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClockPage(),
    );
  }
}
