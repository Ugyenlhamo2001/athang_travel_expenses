import 'package:flutter/material.dart';
import 'package:travel_expenses/screens/Landing/home_screen.dart';
import 'package:travel_expenses/screens/account/account_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = ['Home', 'Account'];
  List<Widget> screens = [
    HomeScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val) {
          setState(() {
            _selectedIndex = val;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_document), label: 'Document'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}
