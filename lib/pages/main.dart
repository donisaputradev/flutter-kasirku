import 'package:flutter/material.dart';
import 'package:kasirku/cashier.dart';
import 'package:kasirku/history.dart';
import 'package:kasirku/home.dart';
import 'package:kasirku/pages/profile.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget get pages {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return CashierPage();
      case 2:
        return HistoryPage();
      case 3:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(LucideIcons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.scanLine),
            label: 'Kasir',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.scrollText),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.user),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
