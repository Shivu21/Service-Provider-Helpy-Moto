import 'package:flutter/material.dart';

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
                Text('Harsh Sharma'),
                SizedBox(height: 20.0),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Home'),
                        onTap: () {
                          // Add onTap logic here
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Select Your Vehicle'),
                        onTap: () {
                          // Add onTap logic here
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.category_sharp),
                        title: Text('Catagories'),
                        onTap: () {
                          // Add onTap logic here
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.branding_watermark),
                        title: Text('Brands'),
                        onTap: () {
                          // Add onTap logic here
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.list_sharp),
                        title: Text('Wishlist'),
                        onTap: () {
                          // Add onTap logic here
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.money_off_csred_rounded),
                        title: Text('My Orders'),
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
