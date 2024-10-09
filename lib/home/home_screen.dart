import 'package:aspen_project/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.orange,
          currentIndex: 0,
          unselectedItemColor: Colors.black38,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: 'Ticket'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Like'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
          ],
        ),
        body: const Body(),
      ),
    );
  }
}