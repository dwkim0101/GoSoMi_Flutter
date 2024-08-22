import 'package:ai_lawyer_gosomi_flutter/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '고소미',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "SUIT",
        useMaterial3: true,
      ),
      home: const BottomBar(),
    );
  }
}
