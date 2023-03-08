
import 'package:dr_book/ui/daa_home_page.dart';
import 'package:dr_book/ui/doctors_page.dart';
import 'package:flutter/material.dart';


void main() {

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/doctors": (context) => const DoctorsPage(),
      },
      home: const DAAHomePage(),
    );
  }
}