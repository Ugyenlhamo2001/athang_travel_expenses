import 'package:flutter/material.dart';
import 'package:travel_expenses/hoc/home_layout.dart';
import 'package:travel_expenses/screens/Landing/home_screen.dart';
import 'package:travel_expenses/screens/splash_screen.dart';
import 'package:travel_expenses/widgets/own_profile.dart';
import 'package:travel_expenses/widgets/profile.dart';
import 'package:travel_expenses/widgets/update_current_balance.dart';

import 'plugins/local_shared_preferences.dart';

void main() {
  LocalStorage();
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OwnProfile(),
    );
  }
}
