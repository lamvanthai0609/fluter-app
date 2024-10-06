import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/util/themes/index.dart';
import 'package:flutter_application_1/pages/detail.dart';
import 'package:flutter_application_1/pages/get_started.dart';
import 'package:flutter_application_1/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeMain,
      initialRoute: '/',
      routes: {
        '/': (context) => GetStarted(),
        '/home': (context) => MyHomePage(),
        '/detail': (context) => DetailPage()
      },
    );
  }
}
