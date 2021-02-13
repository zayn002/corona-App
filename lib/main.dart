import 'package:corona/MainPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(Corona());

class Corona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
