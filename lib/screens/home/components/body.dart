import 'package:flutter/material.dart';
import 'package:junorasi/screens/home/components/header.dart';
import 'package:junorasi/screens/home/components/search_field.dart';
import 'package:junorasi/screens/home/components/tab.dart';

class Body extends StatelessWidget {
  final TabController tabController;

  const Body({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 30),
            const SearchField(),
            const SizedBox(height: 30),
            CustomTabBar(tabController: tabController),
          ],
        ),
      ),
    );
  }
}
