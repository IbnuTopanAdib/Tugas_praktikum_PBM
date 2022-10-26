import 'package:flora/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Flora());
}

class Flora extends StatelessWidget {
  const Flora({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: FloraHome());
  }
}
