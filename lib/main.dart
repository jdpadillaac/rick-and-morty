import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/pages/welcome/welcome_view.dart';
import 'package:rick_and_morty/app/utils/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rick and morty',
      theme: lightTheme(),
      home: Scaffold(body: WelcomePage()),
    );
  }
}
