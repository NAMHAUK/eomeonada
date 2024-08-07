import 'package:flutter/material.dart';
import 'package:eomeonada/ChatType.dart';

void main() {
  runApp(MyApp());
}

const var a = 1;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatType(),
    );
  }
}