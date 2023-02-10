import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Booking screen'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Hold'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.circle,
                              size: 40,
                            ),
                            title: Text('Santosh Kumar'),
                            subtitle: Text('Honda Car'),
                            trailing: Column(
                              children: [
                                Expanded(child: Icon(Icons.chat_outlined)),
                                Expanded(child: Icon(Icons.stop)),
                                Expanded(
                                    child: Icon(
                                        Icons.keyboard_double_arrow_right)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Engine Problem',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Center(child: Text('Hold')),
            // Center(child: Text('Completed')),
          ],
        ),
      ),
    );
  }
}
