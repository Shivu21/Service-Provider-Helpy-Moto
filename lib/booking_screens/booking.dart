import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Booking screen'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Pending'),
              Tab(text: 'Hold'),
              Tab(text: 'Completed'),
            ],
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
          ),
          
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  FutureBuilder(
                    future: getUsersDetails(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        final usersDetails = snapshot.data as List<UserDetails>;

                        // Filter the list based on the selected tab
                        final filteredList = selectedTabIndex == 0
                            ? usersDetails
                            : usersDetails.where((userDetails) =>
                                ['pending', 'hold', 'completed'][selectedTabIndex - 1].toLowerCase() == userDetails.status.toLowerCase());
                                
                                                        
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: filteredList.map((userDetails) => GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: Text(userDetails.name),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Location: ${userDetails.subtitle}'),
                                        Text('Distance: 2 km'),
                                        SizedBox(height: 10),
                                        Text(userDetails.description),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: Text('Message'),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: Text('Cancel'),
                                              style: ElevatedButton.styleFrom(primary: Colors.red),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: Text('Confirm'),
                                              style: ElevatedButton.styleFrom(primary: Colors.green),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                                  
                              },
                              child: Container(
                                height: 155,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 50,
                                        backgroundImage:
                                            NetworkImage(userDetails.image),
                                      ),
                                      SizedBox(width: 30),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              userDetails.name,
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Text(
                                              '${userDetails.subtitle}, ',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              userDetails.description,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Text(
                                              'Status: ${userDetails.status}',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                            icon: Icon(Icons.chat_bubble_outline),
                                            onPressed: () {},
                                            color: Colors.black, // set the color for chat icon button
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.check),
                                            onPressed: () {},
                                            color: Colors.green, // set the color for check icon button
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.close),
                                            onPressed: () {},
                                            color: Colors.red, // set the color for close icon button
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )).toList(),
                          ),
                        );
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


// Connect the database or API here to get the users details
Future<List<UserDetails>> getUsersDetails() async {
  await Future.delayed(Duration(seconds: 3));
  
  return [
    UserDetails(
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'Rishikesh',
      'Audi',
      'New Delhi, IN',
      'Completed',
    ),
    UserDetails(
      'https://source.unsplash.com/50x50/?portrait,people',
      'Rohit',
      'BMW',
      'New York, USA',
      'Confirmed',
    ),
    UserDetails(
      'https://source.unsplash.com/50x50/?portrait',
      'Suman',
      'Mercedes-Benz',
      'Paris, France',
      'Hold',
    ),
    UserDetails(
      'https://picsum.photos/50/50/?random',
      'Harsh',
      'Mercedes-Benz',
      'Paris, France',
      'Pending',
    ),
    UserDetails(
      'https://loremflickr.com/50/50/people',
      'Nandini',
      'Mercedes-Benz',
      'Paris, France',
      'Completed',
    ),
  ];
}

class UserDetails {
  final String image;
  final String name;
  final String subtitle;
  final String description;
  final String status;

  UserDetails(
    this.image,
    this.name,
    this.subtitle,
    this.description,
    this.status,
  );
}
