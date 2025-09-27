import 'package:flutter/material.dart';
import 'package:widget_catalog_week2_ahmed_omran/inputs/key_board_listner_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KeyboardListenerExample(),
    );
  }
}
