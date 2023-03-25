import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../Main_Screen/home.dart';
import '../booking_screens/booking.dart';
import '../main_profile_screens/profile.dart';
import '../utils/billsscreen.dart';

class Onboarding_page extends StatefulWidget {
  @override
  _Onboarding_pageState createState() => _Onboarding_pageState();
}

class _Onboarding_pageState extends State<Onboarding_page> {
  final List<Widget> _screens = [
    HomeScreen(),
    BookingScreen(),
    BillsScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
          },
          icon: const Icon(Icons.menu, color: Colors.black54),
        ),
        title: Text(
          "HELPY MOTO",
          style: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.bold, // adds bold styling
            fontSize: 22.0, // changes font size
            letterSpacing: 1.5, // increases letter spacing
            fontFamily:
                'YourCustomFont', // replace 'YourCustomFont' with your desired font family
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // Set up your onTap logic here
              // Do something
            },
            child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.notifications, color: Colors.blue),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        height: 50,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.speaker_notes_sharp, size: 30),
          Icon(Icons.receipt_outlined, size: 30),
          Icon(Icons.person_sharp, size: 30),
        ],
        index: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
