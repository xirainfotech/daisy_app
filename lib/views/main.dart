import 'package:flutter/material.dart';
import 'index.dart';

void main() {
  runApp(const Daisy());
}

class Daisy extends StatelessWidget {
  const Daisy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
    );
  }
}
