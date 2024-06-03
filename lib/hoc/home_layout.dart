import 'package:flutter/material.dart';
import 'package:travel_expenses/screens/Landing/home_screen.dart';
import 'package:travel_expenses/screens/account/account_screen.dart';
import 'package:travel_expenses/widgets/Add_transaction.dart';
import 'package:travel_expenses/widgets/Transaction.dart';
import 'package:travel_expenses/widgets/own_profile.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = [
    'Home',
    "Transactions",
    "Add",
    "Profile",
  ];
  List<Widget> screens = [
    HomeScreen(),
    TransactionsScreen(),
    AddTransaction(),
    OwnProfile(),
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
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_document), label: 'Transaction'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
