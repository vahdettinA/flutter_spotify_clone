import 'package:flutter/material.dart';
import 'package:spotify/companent/bottom_navigator_bar.dart';
import 'package:spotify/theme/color_theme.dart';
import 'package:spotify/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: black,
        ),
        debugShowCheckedModeBanner: false,
        home: BottomNavBar());
  }
}
