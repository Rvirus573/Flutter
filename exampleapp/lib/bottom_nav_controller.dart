import 'package:exampleapp/pages/account.dart';
import 'package:exampleapp/pages/add.dart';
import 'package:exampleapp/pages/chat.dart';
import 'package:exampleapp/pages/home.dart';
import 'package:exampleapp/pages/my_ads.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final _pages = [
    Home(),
    MyAds(),
    const Add_screen(),
    Chat(),
    const Account(),
  ];

  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.purple,
        
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_max_outlined),
              label: 'Hoem',
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
              icon: Icon(Icons.ads_click_outlined), label: 'My Ads', backgroundColor: Colors.cyan),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add', backgroundColor: Colors.cyan),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat', backgroundColor: Colors.cyan),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account', backgroundColor: Colors.cyan),
        ],
      ),
      body: _pages[_currentindex],
    );
  }
}
