import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(icon: Icon(color: Colors.yellow.shade700,Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(color: Colors.yellow.shade700,Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(color: Colors.yellow.shade700,Icons.settings), label: "Settings"),
      ],
    );
  }
}
