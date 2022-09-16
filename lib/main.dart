import 'package:flutter/material.dart';
import 'package:newsrestapi/pages/categoryPage.dart';
import 'package:newsrestapi/pages/homePage.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'cat': (context) => Category(),
      },
    ),
  );
}
