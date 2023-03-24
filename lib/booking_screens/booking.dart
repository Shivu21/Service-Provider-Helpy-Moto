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
                  FutureBuilder(
                    future: getUserDetails(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        final userDetails = snapshot.data as UserDetails;
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 120,
                            child: GestureDetector(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage:
                                          NetworkImage(userDetails.imageUrl),
                                    ),
                                    SizedBox(width: 30),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            userDetails.mechanicName,
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            '${userDetails.companyName}, ',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            userDetails.location,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          Text(
                                            'Query: ${userDetails.mechanicID}',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                        //                         z
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserDetails {
  final String mechanicName;
  final String companyName;
  final String location;
  final String mechanicID;
  final String imageUrl;

  // Set initial values here
  UserDetails(
    this.mechanicName,
    this.companyName,
    this.location,
    this.mechanicID,
    this.imageUrl,
  );
}

// Connect the database or API here to get the user details
Future<UserDetails> getUserDetails() async {
  await Future.delayed(Duration(seconds: 3));
  return UserDetails(
    'Rishikesh',
    'Audi',
    'New Delhi, IN',
    'Engine Problem',
    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  );
}
