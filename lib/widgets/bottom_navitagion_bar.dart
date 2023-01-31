import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromARGB(255, 25, 21, 7),
      selectedItemColor: Colors.pink,
      unselectedItemColor: Color.fromARGB(255, 111, 107, 107),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search_off,
              size: 30,
            ),
            label: 'Buscar'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.share,
              size: 30,
            ),
            label: 'Compartir'),
      ],
    );
  }
}
