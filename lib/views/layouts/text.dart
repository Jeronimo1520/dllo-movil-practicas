import 'package:flutter/material.dart';

Widget crearTextos() {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vestibulum sapien vitae risus pellentesque, sit amet congue metus maximus. Aenean malesuada aliquam ante, et ullamcorper nulla aliquet ac.",
          textAlign: TextAlign.center, // Alinear el texto al centro
        ),
      ],
    ),
  );
}