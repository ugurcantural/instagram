import 'package:flutter/material.dart';
import 'package:instagram/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İnstagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //appbar transparent
        appBarTheme: const AppBarTheme(
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            actionsIconTheme: IconThemeData(
              color: Colors.black87,
            )),
        //primary color
        primaryColor: Colors.black87,
      ),
      home: const HomeScreen(),
    );
  }
}
