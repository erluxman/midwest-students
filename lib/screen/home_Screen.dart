import 'package:flutter/material.dart';
import 'package:midwest/main.dart';
import 'package:midwest/screen/bottom%20nav%20screens/contact_screen.dart';
import 'package:midwest/screen/bottom%20nav%20screens/home.dart';
import 'package:midwest/screen/bottom%20nav%20screens/semestar_screen.dart';
import 'package:midwest/screen/bottom%20nav%20screens/setting_screen.dart';
import 'package:midwest/screen/bottom%20nav%20screens/syllabus_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var navBarItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month_outlined), label: 'Semestar'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.contact_mail), label: 'Contact'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.book_outlined), label: 'Syllabus'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: 'Settings'),
  ];
  List navBody = [
    const HomeScrn(),
    const SemestarScreen(),
    const ContactScreen(),
    const SyllabusScreen(),
    const SettingScreen()
  ];
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBody[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 250, 249, 249),
          unselectedItemColor: const Color.fromARGB(255, 168, 166, 166),
          currentIndex: currentindex,
          onTap: onTap,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          backgroundColor: const Color.fromARGB(187, 24, 39, 247),
          type: BottomNavigationBarType.fixed,
          items: navBarItem),
    );
  }
}
