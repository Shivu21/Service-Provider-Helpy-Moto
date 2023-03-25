import 'package:flutter/material.dart';

class OngoingRequestCard extends StatelessWidget {
  final String image;
  final String name;
  final String subtitle;
  final String description;
  final String bookingId;
  final String status;
  final String serProvId;
  final String bill;
  final String createdTime;
  final String completeTime;

  const OngoingRequestCard({
    Key? key,
    required this.image,
    required this.name,
    required this.subtitle,
    required this.description,
    required this.bookingId,
    required this.status,
    required this.serProvId,
    required this.bill,
    required this.createdTime,
    required this.completeTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Request Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
              fit: BoxFit.cover,
              width: width,
              height: height * 0.3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.01),
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.005),
              child: Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.005),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.grey.shade300),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Booking ID: $bookingId',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Status: $status',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.005),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Created Time: $createdTime',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Service Provider ID: $serProvId',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Complete Time: $completeTime',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}
