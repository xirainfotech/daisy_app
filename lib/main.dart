import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../project_config.dart';
import 'views/auth/login.dart';

void main() {
  runApp(const Daisy());
}

class Daisy extends StatelessWidget {
  const Daisy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: applicationName,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
