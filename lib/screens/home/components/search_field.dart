import 'package:flutter/material.dart';
import 'package:junorasi/constant.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 45,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(45)
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Cari Jurnal",
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 9
          )
        ),
      ),
    );
  }
}