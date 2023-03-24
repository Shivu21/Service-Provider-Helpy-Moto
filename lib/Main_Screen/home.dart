import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:ServiceProviderApp/Main_Screen/sos_screen.dart';
import 'dart:convert';
import 'package:ServiceProviderApp/Main_Screen/status.dart';
import 'package:ServiceProviderApp/drawer_screens/drawer_screen.dart';
import 'package:ServiceProviderApp/models/catalog.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedButton = '';
  bool status = false;
  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final ongoingRequestJson =
        await rootBundle.loadString("lib/assets/files/DATA.js");
    final decodedData = jsonDecode(ongoingRequestJson);
    var productsData = decodedData["products"];
    setState(() {
      data = List.from(productsData)
          .map((item) => Item.fromMap(item).toMap())
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final paddingSize = 16.0;

    return Scaffold(
      drawer: DrawerScreen(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingSize),
              child: Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.blueAccent,
                  ),
                  title:
                      Text('Delhi', style: TextStyle(color: Colors.blueAccent)),
                  subtitle: Text('Enter Your Location'),
                  trailing: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        status ? 'Online' : 'Offline',
                        style: TextStyle(
                          color: status ? Colors.blueAccent : Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Switch(
                          value: status,
                          onChanged: (value) {
                            setState(() {
                              status = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Divider(
            //   height: 5,
            // ),
            Container(
              height: screenHeight * 0.25,
              child: Center(
                child: Image.network(
                  'https://i.stack.imgur.com/HILmr.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: paddingSize),
            Container(
              padding: EdgeInsets.symmetric(horizontal: paddingSize),
              child: Text(
                'Ongoing Request',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: paddingSize),
            Container(
              height: screenHeight * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: screenHeight / 5,
                    width: screenWidth / 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          // Handle card tap
                        },
                        child: Card(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: screenWidth / 14,
                                backgroundImage: NetworkImage(
                                    items[index]['image'].toString()),
                                  
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[index]['title']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: screenWidth / 28,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        items[index]['subtitle']!,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: screenWidth / 32,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        items[index]['description']!,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: screenWidth / 36,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: paddingSize),
            Container(
              padding: EdgeInsets.symmetric(horizontal: paddingSize),
              child: Text(
                'Other Services',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: paddingSize),
            Container(
              height: screenHeight * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: otheritems.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = otheritems[index];
                  return SizedBox(
                    height: screenHeight / 5,
                    width: screenWidth / 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        elevation: 2.0,
                        color: item['color'] as Color?,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              item['imagePath'].toString(),
                              width: screenWidth *
                                  0.18, // Set the width as 10% of screen width
                              height: screenHeight *
                                  0.08, // Set the height as 8% of screen height
                            ),
                            SizedBox(height: 10),
                            Text(
                              item['title'].toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final otheritems = [
  {
    'imagePath': 'lib/assets/images/towtruck.png',
    'title': 'Towing Service',
    'color': Colors.white,
  },
  {
    'imagePath': 'lib/assets/images/siren.png',
    'title': 'SOS',
    'color': Colors.red[50],
  },
  {
    'imagePath': 'lib/assets/images/cleaning-staff.png',
    'title': 'Deep Cleaning',
    'color': Colors.white,
  },
];
var items = <Map<String, String>>[
  {
    'title': 'Shivam',
    'subtitle': 'Rolls-Royce Phantom',
    'description': 'Cleaning',
    'image': 'https://source.unsplash.com/50x50/?portrait',
  },
  {
    'title': 'Rohit',
    'subtitle': 'Mercedes-Mayback',
    'description': 'Engine Problem',
    'image': 'https://source.unsplash.com/50x50/?portrait',
  },
  {
    'title': 'Suman',
    'subtitle': 'BMW 7-Series',
    'description': 'Cleaning',
    'image': 'https://source.unsplash.com/50x50/?portrait',
  },
  {
    'title': 'Mohit',
    'subtitle': 'Audi A8',
    'description': 'Service',
    'image': 'https://source.unsplash.com/50x50/?portrait',
  },
];
