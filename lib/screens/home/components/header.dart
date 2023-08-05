import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
      EdgeInsets.symmetric(horizontal:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 68,
            child: (
              Image.asset('assets/logo.png',
              fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
}