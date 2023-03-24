import 'package:flutter/material.dart';
import 'package:ServiceProviderApp/drawer_screens/drawer_screen.dart';
import 'package:ServiceProviderApp/booking_screens/booking.dart';
import 'package:ServiceProviderApp/drawer_screens/help&support.dart';
import 'package:ServiceProviderApp/drawer_screens/licenses.dart';
import 'package:ServiceProviderApp/drawer_screens/privacy_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      'https://source.unsplash.com/50x50/?portrait'),
                ),
                SizedBox(height: 10.0),
                Text('User Name'),
                SizedBox(height: 20.0),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Home'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DrawerScreen(),
                                ));
                          }),
                      ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Booking'),
                          onTap: () {
                            // Add onTap logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookingScreen(),
                              ),
                            );
                          }),
                      ListTile(
                        leading: Icon(Icons.category_sharp),
                        title: Text('Privacy Policy'),
                        onTap: () {
                          // Add onTap logic here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrivacyScreen(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.branding_watermark),
                        title: Text('Licenses'),
                        onTap: () {
                          // Add onTap logic here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Licenses(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.list_sharp),
                        title: Text('Help & Support'),
                        onTap: () {
                          // Add onTap logic here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Help_Support(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Log Out'),
                        onTap: () {
                          // Add onTap logic here
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 40,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.star),
            ),
          ),
        ],
      ),
    );
  }
}
