import 'package:flutter/material.dart';
import 'package:kasirku/pages/profile.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MainPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfilePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
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
