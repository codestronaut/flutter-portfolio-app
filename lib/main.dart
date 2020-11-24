import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
