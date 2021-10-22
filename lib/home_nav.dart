import 'package:atl_proto/screens/tab_pages/credits.dart';
import 'package:atl_proto/screens/tab_pages/homepage.dart';
import 'package:atl_proto/screens/tab_pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: HomeForNav(),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
  ));
}

// ignore: use_key_in_widget_constructors
class HomeForNav extends StatefulWidget {
  @override
  _HomeForNavState createState() => _HomeForNavState();
}

class _HomeForNavState extends State<HomeForNav> {
  int _selectedIndex = 1;
  static final List _widgetOptions = [
    CreditsPage(),
    HomePage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_outline_rounded,
              color: Colors.white30,
            ),
            activeIcon: Icon(Icons.info_rounded),
            label: 'Credits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.white30),
            activeIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.white30,
            ),
            activeIcon: Icon(Icons.settings_rounded),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedFontSize: 18,
        iconSize: 36,
        elevation: 0,
        backgroundColor: Colors.black87,
        unselectedItemColor: Colors.black87,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(size: 28),
        selectedLabelStyle: GoogleFonts.poppins(
          letterSpacing: 2,
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
