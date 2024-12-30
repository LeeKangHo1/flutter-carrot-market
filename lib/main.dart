import 'package:carrot/screens/main_screens.dart';
import 'package:carrot/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHolder(),
      theme: theme(),
    );
  }
}
