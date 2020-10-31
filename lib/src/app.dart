// pacs flutter
import 'package:flutter/material.dart';
// pagines creades
//import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: ContadorPage(),
    );
  }
}
