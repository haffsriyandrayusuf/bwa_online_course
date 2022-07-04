import 'package:bwa_online_course/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Online Course UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFAFAFA),
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
