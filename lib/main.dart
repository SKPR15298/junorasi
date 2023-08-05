import 'package:flutter/material.dart';
import 'package:junorasi/routes.dart';
import 'package:junorasi/screens/home/home_screen.dart';
import 'package:junorasi/theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Junorasi',
      theme: theme(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
      home: DefaultTabController(
        length: 2,
        child: HomeScreen()
      )
    );
  }
}
