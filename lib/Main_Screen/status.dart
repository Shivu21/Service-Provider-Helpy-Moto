import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
             Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://www.bing.com/th?id=OIP.iPT2f-NkI6nwmeMnV_YazAHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
                ),
                title: Text('Service Name'),
                subtitle: Text(
                    "Service Name:     Deep Cleaning                                         Customer Name: Elon Musk                                           Status:  Not Accepted                                                                Query:Car has not Cleared Properly                                                                Created Time: 4:00 pm"),
                trailing: Icon(Icons.pending_sharp),
              ),
            ),
             Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://source.unsplash.com/50x50/?portraithttps://source.unsplash.com/50x50/?portrait'),
                ),
                title: Text('Service Name'),
                subtitle: Text(
                    "Service Name:     Deep Cleaning                                         Customer Name: Elon Musk                                           Status:  Not Accepted                                                                Query:Car has not Cleared Properly                                                                Created Time: 4:00 pm"),
                trailing: Icon(Icons.pending),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle accept button press
                    },
                    child: Text('Accept'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle reject button press
                    },
                    child: Text('Reject'),
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
