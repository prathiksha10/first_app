import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer( [
                Color.fromARGB(255, 1, 90, 26),
                Color.fromARGB(255, 142, 198, 11)
              ]), 
      ),
    ),
  );
}
