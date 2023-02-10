import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../utils/billsscreen.dart';
import '../utils/booking.dart';
import '../utils/home.dart';
import '../utils/map.dart';
import '../utils/profile.dart';

class Onboarding_page extends StatefulWidget {
  @override
  _Onboarding_pageState createState() => _Onboarding_pageState();
}

class _Onboarding_pageState extends State<Onboarding_page> {


  final List<Widget> _screens = [
    HomeScreen(),
    BillsScreen(),
    BookingScreen(),
    MapsScreen(),
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
       appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (){
            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
          },
          icon: const Icon(Icons.menu, color: Colors.white,),
        ),
       ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              backgroundColor: Colors.pink,
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              backgroundColor: Colors.amber,
              label: ('Bills'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              backgroundColor: Colors.cyan,
              label: ('Booking'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              backgroundColor: Colors.deepOrange,
              label: ('Maps'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.lightGreen,
              label: ('Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Color.fromARGB(255, 14, 17, 20),
          unselectedItemColor: Color.fromARGB(255, 250, 247, 247),
          backgroundColor: Color.fromARGB(255, 240, 244, 247),
          elevation: 1,
        ),
      ),
    );
  }
}
