import 'package:flutter/material.dart';
import 'package:final_year_project/intro.dart';
import 'package:final_year_project/login.dart';
import 'package:final_year_project/Register.dart';
import 'package:final_year_project/code.dart';
import 'package:final_year_project/home.dart';
import 'package:final_year_project/password.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
