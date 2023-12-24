import 'package:flutter/material.dart';
import 'package:uni_matrix/pesentation/constants/constant.dart';
import 'package:uni_matrix/pesentation/screen/log_in/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uni Matrix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MyConstants.appColor),
      ),
      home: LoginPage(),
    );
  }
}
