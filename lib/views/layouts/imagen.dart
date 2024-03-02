import 'package:flutter/material.dart';

Widget crearImagenes() {
  return Column(
    children: [
      // createImage(),
      // createImageColor(),
      // createImageNetwork(),
      // createImageProviderContainer(),
      Image.asset(
        'assets/images/paisaje.jpg',
        height: 200,
        width: 500,
        fit: BoxFit.contain,
      ),
    ],
  );
}
