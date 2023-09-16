import 'package:flutter/material.dart';
import 'package:spotify/theme/color_theme.dart';
import 'package:spotify/view/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> _screen = [
    HomePage(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: black,
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          selectedItemColor: white,
          unselectedItemColor: grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Ara"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: "Kitaplığın"),
            BottomNavigationBarItem(
                icon: Icon(Icons.workspace_premium), label: "Premium")
          ]),
      body: _screen[currentindex],
    );
  }
}
