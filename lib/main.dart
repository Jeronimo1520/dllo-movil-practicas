import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/layouts/imagen.dart';
import 'package:flutter_application_1/views/layouts/rows.dart';
import 'package:flutter_application_1/views/layouts/text.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            crearImagenes(),
            rowsTitleSection(),
            createRowIcons(),
            crearTextos()
          ],
        ),
      ),
    );
  }
}
